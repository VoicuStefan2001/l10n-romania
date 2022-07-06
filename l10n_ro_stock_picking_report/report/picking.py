##############################################################################
#
# Copyright (c) 2014 Deltatech All Rights Reserved
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


import time
from functools import reduce

from odoo import api, models


class ReportPickingDelivery(models.AbstractModel):
    _name = "report.abstract_report.delivery_report"
    _description = "ReportPickingDelivery"
    _template = None

    @api.model
    def _get_report_values(self, docids, data=None):
        report = self.env["ir.actions.report"]._get_report_from_name(self._template)
        return {
            "doc_ids": docids,
            "doc_model": report.model,
            "data": data,
            "time": time,
            "docs": self.env[report.model].browse(docids),
            "get_line": self._get_line,
            "get_totals": self._get_totals,
            "reduce": reduce,
        }

    def _get_line(self, move_line):
        res = {"price": 0.0, "amount": 0.0, "tax": 0.0, "amount_tax": 0.0}
        if move_line.sale_line_id:
            line = move_line.sale_line_id

            taxes_ids = (
                line.tax_id
            )  # line.product_id.taxes_id.filtered(lambda r: r.company_id == self.env.user.company_id)

            incl_tax = taxes_ids.filtered(lambda tax: tax.price_include)

            if line.product_uom_qty != 0:
                res["price"] = line.price_subtotal / line.product_uom_qty
                if incl_tax:
                    list_price = line.price_total / line.product_uom_qty
                else:
                    list_price = res["price"]
            else:
                res["price"] = 0.0
                list_price = 0.0

            taxes_sale = taxes_ids.compute_all(list_price, quantity=move_line.product_qty, product=line.product_id)

            res["tax"] = taxes_sale["total_included"] - taxes_sale["total_excluded"]
            res["amount"] = taxes_sale["total_excluded"]
            res["amount_tax"] = taxes_sale["total_included"]

        return res

    def _get_totals(self, move_lines):
        res = {"amount": 0.0, "tax": 0.0, "amount_tax": 0.0}
        for move in move_lines:
            line = self._get_line(move)
            res["amount"] += line["amount"]
            res["tax"] += line["tax"]
            res["amount_tax"] += line["amount_tax"]
        return res


class ReportPickingReception(models.AbstractModel):
    _name = "report.abstract_report.reception_report"
    _description = "ReportPickingReception"
    _template = None

    @api.model
    def _get_report_values(self, docids, data=None):
        report = self.env["ir.actions.report"]._get_report_from_name(self._template)
        return {
            "doc_ids": docids,
            "doc_model": report.model,
            "data": data,
            "time": time,
            "docs": self.env[report.model].browse(docids),
            "get_line": self._get_line,
            "get_totals": self._get_totals,
            "reduce": reduce,
        }

    def _get_line(self, move_line):
        res = {"price": 0.0, "amount": 0.0, "tax": 0.0, "amount_tax": 0.0, "amount_sale": 0.0, "margin": 0.0}

        currency = move_line.company_id.currency_id

        if move_line.purchase_line_id:
            # todo: ce fac cu receptii facute ca preturi diferite ????
            line = move_line.purchase_line_id

            # todo: de verificat daca pretul din miscare este actualizat inainte de confirmarea transferului pentru a se actualiza cursul valutar !!
            res["price"] = move_line.price_unit  # pretul caculat la genereare miscarii

            # la loturi nu este completat move_line.price_unit
            if move_line.price_unit == 0:
                if move_line.remaining_qty != 0:
                    res["price"] = move_line.remaining_value / move_line.remaining_qty

            taxes = line.taxes_id.compute_all(
                res["price"], quantity=move_line.product_qty, product=move_line.product_id, partner=move_line.partner_id
            )

            res["tax"] = taxes["total_included"] - taxes["total_excluded"]
            res["amount"] = taxes["total_excluded"]
            res["amount_tax"] = taxes["total_included"]

            taxes_ids = line.product_id.taxes_id.filtered(lambda r: r.company_id == move_line.company_id)
            list_price = move_line.product_id.list_price
            # incl_tax = taxes_ids.filtered(lambda tax: tax.price_include)
            # if incl_tax:
            #     list_price = incl_tax.compute_all(move_line.product_id.list_price)['total_excluded']
            # else:
            #     list_price = move_line.product_id.list_price

            taxes_sale = taxes_ids.compute_all(
                list_price, currency=currency, quantity=move_line.product_uom_qty, product=move_line.product_id
            )

            res["amount_sale"] = taxes_sale["total_excluded"]
            res["tax_sale"] = taxes_sale["total_included"] - taxes_sale["total_excluded"]
            res["amount_tax_sale"] = taxes_sale["total_included"]
            res["price"] = res["price"] * line.product_uom._compute_quantity(1, line.product_id.uom_id)
            if res["amount_tax"] != 0.0:
                res["margin"] = 100 * (taxes_sale["total_included"] - res["amount_tax"]) / res["amount_tax"]
            else:
                res["margin"] = 0.0
        else:
            # receptie fara comanda de aprovizionare

            value = move_line.value
            res["price"] = abs(move_line.price_unit)

            # res['amount'] = currency.round(value)
            # if move_line.product_uom_qty != 0:
            #     res['price'] = currency.round(value) / move_line.product_uom_qty
            # else:
            #     res['price'] = 0.0

            taxes_ids = move_line.product_id.supplier_taxes_id.filtered(lambda r: r.company_id == move_line.company_id)
            taxes = taxes_ids.compute_all(
                res["price"],
                currency=currency,
                quantity=move_line.product_uom_qty,
                product=move_line.product_id,
                partner=move_line.partner_id,
            )
            res["amount"] = taxes["total_excluded"]
            res["tax"] = taxes["total_included"] - taxes["total_excluded"]
            res["amount_tax"] = taxes["total_included"]

            taxes_ids = move_line.product_id.taxes_id.filtered(lambda r: r.company_id == move_line.company_id)
            incl_tax = taxes_ids.filtered(lambda tax: tax.price_include)
            # if incl_tax:
            #     list_price = incl_tax.compute_all(move_line.product_id.list_price)['total_excluded']
            # else:

            list_price = move_line.product_id.list_price

            taxes_sale = taxes_ids.compute_all(
                list_price, currency=currency, quantity=move_line.product_uom_qty, product=move_line.product_id
            )

            res["amount_sale"] = taxes_sale["total_excluded"]
            res["tax_sale"] = taxes_sale["total_included"] - taxes_sale["total_excluded"]
            res["amount_tax_sale"] = taxes_sale["total_included"]

            if taxes["total_included"] != 0.0:
                res["margin"] = 100 * (taxes_sale["total_included"] - taxes["total_included"]) / taxes["total_included"]
            else:
                res["margin"] = 0.0

        return res

    def _get_totals(self, move_lines):
        res = {
            "amount": 0.0,
            "tax": 0.0,
            "amount_tax": 0.0,
            "amount_sale": 0.0,
            "tax_sale": 0.0,
            "amount_tax_sale": 0.0,
        }
        for move in move_lines:
            line = self._get_line(move)
            res["amount"] += line["amount"]
            res["tax"] += line["tax"]
            res["amount_tax"] += line["amount_tax"]

            res["amount_sale"] += line["amount_sale"]
            res["tax_sale"] += line["tax_sale"]
            res["amount_tax_sale"] += line["amount_tax_sale"]
        return res


class report_delivery(models.AbstractModel):
    _name = "report.l10n_ro_stock_picking_report.report_delivery"
    _inherit = "report.abstract_report.delivery_report"
    _template = "l10n_ro_stock_picking_report.report_delivery"
    # _wrapped_report_class = picking_delivery


class report_delivery_price(models.AbstractModel):
    _name = "report.l10n_ro_stock_picking_report.report_delivery_price"
    _inherit = "report.abstract_report.delivery_report"
    _template = "l10n_ro_stock_picking_report.report_delivery_price"
    # _wrapped_report_class = picking_delivery


class report_consume_voucher(models.AbstractModel):
    _name = "report.l10n_ro_stock_picking_report.report_consume_voucher"
    _inherit = "report.abstract_report.delivery_report"
    _template = "l10n_ro_stock_picking_report.report_consume_voucher"
    # _wrapped_report_class = picking_delivery


class report_internal_transfer(models.AbstractModel):
    _name = "report.l10n_ro_stock_picking_report.report_internal_transfer"
    _inherit = "report.abstract_report.delivery_report"
    _template = "l10n_ro_stock_picking_report.report_internal_transfer"
    # _wrapped_report_class = picking_delivery


class report_reception(models.AbstractModel):
    _name = "report.l10n_ro_stock_picking_report.report_reception"
    _inherit = "report.abstract_report.reception_report"
    _template = "l10n_ro_stock_picking_report.report_reception"
    # _wrapped_report_class = picking_reception


class report_reception_no_tax(models.AbstractModel):
    _name = "report.l10n_ro_stock_picking_report.report_reception_no_tax"
    _inherit = "report.abstract_report.reception_report"
    _template = "l10n_ro_stock_picking_report.report_reception_no_tax"
    # _wrapped_report_class = picking_reception


class report_reception_sale_price(models.AbstractModel):
    _name = "report.l10n_ro_stock_picking_report.report_reception_sale_price"
    _inherit = "report.abstract_report.reception_report"
    _template = "l10n_ro_stock_picking_report.report_reception_sale_price"
    # _wrapped_report_class = picking_reception
