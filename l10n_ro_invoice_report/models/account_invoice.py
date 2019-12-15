# -*- coding: utf-8 -*-
# ©  2008-2019 Deltatech
#              Dorin Hongu <dhongu(@)gmail(.)com
# See README.rst file on addons root folder for license details

import odoo.addons.decimal_precision as dp

from odoo import models, fields, api


class res_partner(models.Model):
    _inherit = 'res.partner'

    mean_transp = fields.Char(string='Mean transport')


class account_invoice(models.Model):
    _inherit = "account.invoice"

    delegate_id = fields.Many2one('res.partner', string='Delegate',
                                  readonly=True, states={'draft': [('readonly', False)]},
                                  domain=[('is_company', '=', False)])

    mean_transp = fields.Char(string='Mean transport', readonly=True, states={'draft': [('readonly', False)]}, )

    @api.onchange('delegate_id')
    def on_change_delegate_id(self):
        if self.delegate_id:
            self.mean_transp = self.delegate_id.mean_transp


    # anularea facturilor cu zero
    @api.multi
    def action_invoice_cancel(self):
        for invoice in self:
            if invoice.amount_total == 0.0 and invoice.state == 'paid':
                invoice.state = 'open'
                # invoice.write({'state':'open'})

        return super(account_invoice, self).action_invoice_cancel()


class account_invoice_line(models.Model):
    _inherit = "account.invoice.line"



    sequence = fields.Integer(default=1)

    # pretul fara tva utilizat pentru situatia in care tva este inclus in pret
    # valoarea este caclulata direct in factura
    # price_unit_without_taxes = fields.Float(string='Unit Price without taxes', readonly=True,  # store=True,
    #                                         compute='_compute_price')

    # se va utiliza campul stndard price_tax
    #price_taxes = fields.Float(string='Taxes', digits=dp.get_precision('Account'), store=True, readonly=True,
    #                           compute='_compute_price')

    #campul price_normal_taxes nici nu este folosit
    #price_normal_taxes = fields.Float(tring='Normal Taxes', digits=dp.get_precision('Account'), store=True,
    #                                  readonly=True, compute='_compute_price')


    """
    # campurile standard
    
    price_unit = fields.Float(string='Unit Price', required=True, digits=dp.get_precision('Product Price'))
    price_subtotal = fields.Monetary(string='Amount (without Taxes)',
        store=True, readonly=True, compute='_compute_price', help="Total amount without taxes")
    price_total = fields.Monetary(string='Amount (with Taxes)',
        store=True, readonly=True, compute='_compute_price', help="Total amount with taxes")
    price_subtotal_signed = fields.Monetary(string='Amount Signed', currency_field='company_currency_id',
        store=True, readonly=True, compute='_compute_price',
        help="Total amount in the currency of the company, negative for credit note.")
    price_tax = fields.Monetary(string='Tax Amount', compute='_get_price_tax', store=False)
    """

    # @api.one
    # @api.depends('price_unit', 'discount', 'invoice_line_tax_ids', 'quantity',
    #     'product_id', 'invoice_id.partner_id', 'invoice_id.currency_id', 'invoice_id.company_id',
    #     'invoice_id.date_invoice', 'invoice_id.date')
    # def _compute_price(self):
    #
    #     super(account_invoice_line, self)._compute_price()
    #     if self.price_subtotal:
    #         quantity = self.quantity or 1
    #         self.price_unit_without_taxes = self.price_subtotal / quantity
    #         #self.price_taxes = (self.price_total - self.price_subtotal) / quantity
    #
    #
    # def _compute_price_complex(self):
    #     #Versiunea mai complexa
    #     price = self.price_unit * (1 - (self.discount or 0.0) / 100.0)
    #
    #     currency = self.invoice_id and self.invoice_id.currency_id or None
    #
    #     taxes = False
    #     if self.invoice_line_tax_ids:
    #         taxes = self.invoice_line_tax_ids.compute_all(price, currency, quantity=self.quantity, product=self.product_id,
    #                                                       partner=self.invoice_id.partner_id)
    #
    #     # de ce se seteaza cele doua valori ? nu au fost setate in
    #     # if taxes:
    #     #     self.price_subtotal = taxes['total_excluded'] if taxes else self.quantity * price
    #     #     self.price_taxes = taxes['total_included'] - self.price_subtotal
    #
    #     taxes_unit = self.invoice_line_tax_ids.compute_all(price, currency=currency,
    #                                                        quantity=1, product=self.product_id,
    #                                                        partner=self.invoice_id.partner_id)
    #
    #     self.price_unit_without_taxes = taxes_unit['total_excluded']
    #     # Compute normal taxes in case of Customer Invoices to have the value
    #     # in Inverse Taxation
    #     if self.invoice_id.type in ['out_invoice', 'out_refund']:
    #         taxes_ids = self.product_id.taxes_id.filtered(lambda r: r.company_id == self.invoice_id.company_id)
    #         normal_taxes = taxes_ids.compute_all(price, currency=currency,
    #                                                             quantity=self.quantity, product=self.product_id,
    #                                                             partner=self.invoice_id.partner_id)
    #         self.price_normal_taxes = normal_taxes['total_included'] - normal_taxes['total_excluded']
    #     # aplicare rotunjiri . asta nu trebuie facuta in functie de config
    #     if self.invoice_id:
    #         #self.price_subtotal = self.invoice_id.currency_id.round(self.price_subtotal)
    #         #self.price_taxes = self.invoice_id.currency_id.round(self.price_taxes)
    #         self.price_unit_without_taxes = self.invoice_id.currency_id.round(self.price_unit_without_taxes)
    #         self.price_normal_taxes = self.invoice_id.currency_id.round(self.price_normal_taxes)
    #
