# -*- coding: utf-8 -*-
##############################################################################
#
# Copyright (c) 2008 stock All Rights Reserved
#                    Dorin Hongu <dhongu(@)gmail(.)com
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################

from openerp.osv import fields, osv
import openerp.addons.decimal_precision as dp
from openerp import tools


class stock_balance(osv.osv):
    _name = "stock.balance"
    _description = "stock Stock balance"
    _auto = False

    _columns = {

        'date': fields.date('Date', size=6, readonly=True),
        'year': fields.char('Year', size=64, readonly=True),
        'month': fields.selection([
            ('01', 'January'), ('02', 'February'), ('03', 'March'),
            ('04', 'April'), ('05', 'May'), ('06', 'June'), ('07', 'July'),
            ('08', 'August'), ('09', 'September'), ('10', 'October'),
            ('11', 'November'), ('12', 'December')], 'Month', readonly=True),


        'location_id': fields.many2one(
            'stock.location', 'Location', readonly=True, select=True),


        'categ_id': fields.many2one(
            'product.category', 'Category', readonly=True),
        'product_id': fields.many2one(
            'product.product', 'Product', readonly=True),
        'product_uom': fields.many2one(
            'product.uom', 'Unit of Measure', required=True),



        'qty_in': fields.float(
            'Qty In',
            digits_compute=dp.get_precision('Product UoM'),
            readonly=True
        ),
        'amount_in': fields.float(
            'Amount In',
            digits_compute=dp.get_precision('Account'),
            readonly=True
        ),

        'qty_out': fields.float(
            'Qty Out',
            digits_compute=dp.get_precision('Product UoM'),
            readonly=True
        ),
        'amount_out': fields.float(
            'Amount Out',
            digits_compute=dp.get_precision('Account'),
            readonly=True
        ),

        'product_qty': fields.float(
            'Quantity',
            digits_compute=dp.get_precision('Product UoM'),
            readonly=True
        ),
        'amount': fields.float(
            'Amount',
            digits_compute=dp.get_precision('Account'),
            readonly=True
        ),

        'company_id': fields.many2one('res.company', 'Company', readonly=True),

    }

    def init(self, cr):
        tools.sql.drop_view_if_exists(cr, 'stock_balance')
        cr.execute("""
         create or replace view stock_balance as (

SELECT
 min(smg.id) AS id, smg.date, smg.year, smg.month,
 smg.location_id, smg.categ_id, smg.product_id,  smg.product_uom,
 sum(smg.qty_in) AS qty_in,
 sum(smg.amount_in) AS amount_in,
 sum(smg.qty_out) AS qty_out,
 sum(smg.amount_out) AS amount_out,
 sum((smg.qty_in - smg.qty_out)) AS product_qty,
 sum((smg.amount_in - smg.amount_out)) AS amount,
 smg.company_id
 FROM (
  SELECT min(sm.id) AS id,
    date_trunc('month' , sm.date) AS date,
    to_char(date_trunc('day' , sm.date), 'YYYY' ) AS year,
    to_char(date_trunc('day' , sm.date), 'MM' ) AS month,
    sm.location_id, pt.categ_id, sm.product_id, pu.id AS product_uom,
    0 AS qty_in, 0 AS amount_in,
    COALESCE(sum(((sm.product_qty * pu.factor) / pu2.factor)), 0.0) AS qty_out,
    sum((q.qty * q.cost)) AS amount_out, sm.company_id
  FROM stock_move sm
    LEFT JOIN stock_quant_move_rel ON  stock_quant_move_rel.move_id = sm.id
    LEFT JOIN stock_quant q ON  stock_quant_move_rel.quant_id = q.id
    LEFT JOIN product_product pp ON  sm.product_id = pp.id
    LEFT JOIN product_template pt ON  pp.product_tmpl_id = pt.id
    LEFT JOIN product_uom pu ON  pt.uom_id = pu.id
    LEFT JOIN product_uom pu2 ON  sm.product_uom = pu2.id

  WHERE ( sm.state  = 'done' )
  GROUP BY pt.categ_id, sm.product_id, pu.id, sm.location_id, sm.date,
      sm.company_id
    UNION
    SELECT min(- sm.id) AS id,
        date_trunc('month', sm.date) AS date,
        to_char(date_trunc('day', sm.date), 'YYYY') AS year,
        to_char(date_trunc('day', sm.date), 'MM') AS month,
        sm.location_dest_id AS location_id, pt.categ_id, sm.product_id,
        pu.id AS product_uom,
        COALESCE(sum(((sm.product_qty*pu.factor)/pu2.factor)), 0.0) AS qty_in,
        sum((q.qty * q.cost)) AS amount_in,
        0 AS qty_out, 0 AS amount_out, sm.company_id
    FROM  stock_move sm
        LEFT JOIN stock_quant_move_rel ON  stock_quant_move_rel.move_id = sm.id
        LEFT JOIN stock_quant q ON  stock_quant_move_rel.quant_id = q.id
        LEFT JOIN product_product pp ON  sm.product_id = pp.id
        LEFT JOIN product_template pt ON  pp.product_tmpl_id = pt.id
        LEFT JOIN product_uom pu ON  pt.uom_id = pu.id
        LEFT JOIN product_uom pu2 ON  sm.product_uom = pu2.id

  WHERE ( sm.state   = 'done')
  GROUP BY pt.categ_id, sm.product_id, pu.id, sm.location_dest_id, sm.date,
      sm.company_id) smg
 GROUP BY smg.date, smg.year, smg.month, smg.categ_id, smg.product_id,
 smg.location_id, smg.product_uom, smg.company_id
        )""")

stock_balance()


# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
