# -*- coding: utf-8 -*-
# ©  2018 Terrabit
# See README.rst file on addons root folder for license details


from odoo import api, fields, models


class D000Report(models.AbstractModel):
    _name = "l10n_ro.d000_report"
    _description = 'D000Report'
    _code = 'D000'

    company_id = fields.Many2one('res.company', 'Company', required=True, default=lambda self: self.env.user.company_id)
    date_from = fields.Date('Start Date', required=True)
    date_to = fields.Date('End Date', required=True)

    def show_report(self):
        self.ensure_one()
        action = self.env.ref('%s.action_%s' % (self._module, self._code))
        vals = action.read()[0]
        vals['domain'] = [('report_id', '=', self.id)]
        return vals

    @api.multi
    def compute_data_for_report(self):
        pass

    @api.multi
    def xml_processing(self, xml_doc):
        return xml_doc
