# -*- coding: utf-8 -*-
# ©  2017 Deltatech
# See README.rst file on addons root folder for license details


from odoo import models, fields, api, _



class ResPartner(models.Model):
    _inherit = "res.partner"


    vat_subjected = fields.Boolean('VAT Legal Statement')