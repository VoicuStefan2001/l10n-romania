# -*- coding: utf-8 -*-
##############################################################################
#
# Copyright (c) 2008 Deltatech All Rights Reserved
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

from openerp import models, fields, api, _
import openerp.addons.decimal_precision as dp


class res_partner(models.Model):
    _inherit = 'res.partner'

    info_for_invoice  = fields.Html(string='Additional info for invoice')
    vat_dispaly = fields.Char('Display VAT', compute='_compute_dispaly_vat' )

    @api.one
    @api.depends('vat')
    def _compute_dispaly_vat(self):
        self.vat_dispaly = self.vat
        if not self.vat_subjected:
            vat_number = self.vat and self.vat[2:].replace(' ', '')
            self.vat_dispaly = vat_number
            


# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
