from odoo import _, api, fields, models


class report_partners_tatement(models.AbstractModel):
    _name = "report.l10n_ro_account_report.report_partner_statement"
    _description = "report_partner_statement"
    _template = "l10n_ro_account_report.report_partner_statement"
