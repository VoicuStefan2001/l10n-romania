# ©  2008-2020 Deltatech
#              Dorin Hongu <dhongu(@)gmail(.)com
# See README.rst file on addons root folder for license details


import logging

from odoo import api, models

_logger = logging.getLogger(__name__)


class ResPartner(models.Model):
    _inherit = "res.partner"

    @api.constrains("vat", "country_id")
    def check_vat(self):
        if self.env.context.get("no_vat_validation"):
            return
        partners = self.filtered(lambda p: p.country_id.code != "RO")
        return super(ResPartner, partners).check_vat()

    @api.model
    def create(self, vals):
        if "name" in vals:
            vat_number = vals["name"].lower().strip()
            if "ro" in vat_number:
                vat_number = vat_number.replace("ro", "")
                if vat_number.isdigit():
                    try:
                        vals["vat"] = vals["name"]
                        result = self._get_Anaf(vat_number)
                        if result:
                            res = self._Anaf_to_Odoo(result)
                            vals.update(res)
                    except Exception as e:
                        _logger.info("ANAF Webservice not working. Exception: % s" % e)

        if vals.get("state_id") and not isinstance(vals["state_id"], int):
            vals["state_id"] = vals["state_id"].id

        partner = super(ResPartner, self).create(vals)
        return partner

    def button_get_partner_data(self):
        if self.country_id and self.country_id.code != "RO":
            return False
        if self.name and not self.vat:
            self.vat = self.name
        self.ro_vat_change()

        return True
        # self.onchange_vat_subjected()  # fortare compltare ro
