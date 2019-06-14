# -*- coding: utf-8 -*-
# ©  2008-2018 Fekete Mihai <mihai.fekete@forbiom.eu>
#              Dorin Hongu <dhongu(@)gmail(.)com
# See README.rst file on addons root folder for license details

from odoo import api, fields, models, _
from odoo.tools.float_utils import float_compare
from odoo.exceptions import AccessError, UserError


class AccountInvoice(models.Model):
    _inherit = 'account.invoice'


    # nu trebuie sa se schimbe locatia la receptie
    stock_location_id = fields.Many2one('stock.location', readonly=True, states={'draft': [('readonly', False)]})

    @api.onchange('purchase_id')
    def purchase_order_change(self):
        if not self.stock_location_id:
            self.stock_location_id = self.purchase_id.picking_type_id.default_location_dest_id
        res = super(AccountInvoice, self).purchase_order_change()
        return res

    def _prepare_invoice_line_from_po_line(self, line):
        data = super(AccountInvoice, self)._prepare_invoice_line_from_po_line(line)

        if self.type in ['in_invoice', 'in_refund']:

            if line.product_id.purchase_method == 'receive':  # receptia in baza cantitatilor primite
                if line.product_id.type == 'product':
                    notice = False
                    for picking in line.order_id.picking_ids:
                        if picking.notice:
                            notice = True

                    if notice:  # daca e stocabil si exista un document facut
                        data['account_id'] = line.company_id.property_stock_picking_payable_account_id.id or \
                                             line.product_id.property_stock_account_input.id or \
                                             line.product_id.categ_id.property_stock_account_input_categ_id.id or \
                                             data['account_id']
                    else:
                        data['account_id'] = line.product_id.property_stock_account_input.id or \
                                             line.product_id.categ_id.property_stock_account_input_categ_id.id or \
                                             data['account_id']

                else:  # daca nu este stocabil trebuie sa fie un cont de cheltuiala
                    data['account_id'] = line.product_id.property_account_expense_id.id or \
                                         line.product_id.categ_id.property_account_expense_categ_id.id or \
                                         data['account_id']
            else:
                if line.product_id.type == 'product':
                    data['account_id'] = line.product_id.property_stock_account_input.id or \
                                         line.product_id.categ_id.property_stock_account_input_categ_id.id or \
                                         data['account_id']

        return data

    @api.model
    def invoice_line_move_line_get(self):

        res = super(AccountInvoice, self).invoice_line_move_line_get()
        # este setat contul 408 in configurare ?
        account_id = self.company_id.property_stock_picking_payable_account_id
        # char daca nu este sistem anglo saxon diferentele de pret dintre receptie si factura trebuie inregistrate
        if not self.env.user.company_id.anglo_saxon_accounting:
            if self.type in ['in_invoice', 'in_refund']:
                diff_limit = float(self.env['ir.config_parameter'].sudo().get_param('stock_account.diff_limit', '2.0'))

                # se adaga nota contabilia cu diferanta de pret la achizitie ?

                add_diff_from_config = eval(self.env['ir.config_parameter'].sudo().get_param('stock_account.add_diff', 'False'))

                for i_line in self.invoice_line_ids:
                    if i_line.product_id.cost_method == 'standard':
                        add_diff =  True  # daca pretul este standard se inregistreaza diferentele de pret.
                    else:
                        add_diff = add_diff_from_config

                    # daca linia a fost peceptionata  de pe baza de aviz se seteaza contul 408 pe nota contabile
                    if account_id and i_line.account_id == account_id:
                        i_line = i_line.with_context(fix_stock_input=account_id)
                        add_diff = True  #trbuie sa adaug diferenta dintre recpetia pe baza de aviz si receptia din factura
                    diff_line = self._anglo_saxon_purchase_move_lines(i_line, res)


                    line_diff_value = 0.0
                    for diff in diff_line:

                        if add_diff:
                            if abs(diff['price_unit'] * diff['quantity']) > diff_limit:
                                raise UserError(_('The price difference for the product %s exceeds the %d limit ') % (i_line.product_id.name,diff_limit))

                        else:
                            line_diff_value += diff['price_unit'] * diff['quantity']
                            diff['account_id'] = i_line.account_id.id
                            diff['name'] += _(' Price difference')
                            diff['quantity'] = 0.0  # nu mai este necesara inregitrarea cantitatii

                    if diff_line:
                        res.extend(diff_line)



                    if line_diff_value:
                        i_line.modify_stock_move_value(line_diff_value)




        for line in res:
            line['stock_location_id'] = self.stock_location_id.id

        return res



    # @api.multi
    # def finalize_invoice_move_lines(self, move_lines):
    #     move_lines  = super(AccountInvoice, self).finalize_invoice_move_lines(move_lines)
    #
    #     for line in move_lines:
    #         if self.type in ['in_invoice','out_refund']:
    #             line[2]['stock_location_dest_id'] = self.stock_location_id.id
    #         else:
    #             line[2]['stock_location_id'] = self.stock_location_id.id
    #
    #     return move_lines



class AccountInvoiceLine(models.Model):
    _inherit = "account.invoice.line"



    @api.multi
    def modify_stock_move_value(self, line_diff_value):
        product = self.product_id #with_context(to_date=self.invoice_id.date_invoice)
        if self.product_id and self.product_id.valuation == 'real_time' and self.product_id.type == 'product':
            if self.product_id.cost_method != 'standard' and self.purchase_line_id:
                stock_move_obj = self.env['stock.move']
                valuation_stock_move = stock_move_obj.search([
                    ('purchase_line_id', '=', self.purchase_line_id.id),
                    ('state', '=', 'done'), ('product_qty', '!=', 0.0)
                ])
                if self.invoice_id.type == 'in_refund':
                    valuation_stock_move = valuation_stock_move.filtered(lambda m: m._is_out())
                elif self.invoice_id.type == 'in_invoice':
                    valuation_stock_move = valuation_stock_move.filtered(lambda m: m._is_in())

                if valuation_stock_move:
                    for move in valuation_stock_move:
                        cost_to_add = (move.remaining_qty / move.product_qty) * line_diff_value
                        move.write({
                            'value':  move.value + line_diff_value,
                            'remaining_value': move.remaining_value + cost_to_add,
                            'price_unit': (move.value + line_diff_value) / move.product_qty,
                        })


                #todo: de actualizat pretul standard cu noua valoare de stoc

                stock_value = product.stock_value  # + line_diff_value
                new_price = stock_value / product.qty_at_date
                self.product_id.write({'standard_price':new_price})





    @api.onchange('product_id')
    def _onchange_product_id(self):

        if self.product_id and self.product_id.type == 'product' and not self.env.context.get('allowed_change_product',
                                                                                              False):
            raise UserError(_('It is not allowed to change a stored product!'))
        return super(AccountInvoiceLine, self)._onchange_product_id()

    @api.onchange('quantity')
    def _onchange_quantity(self):
        message = ''
        if self.invoice_id.type in ['in_refund', 'out_refund']:
            return
        if self.product_id and self.product_id.type == 'product':

            if self.purchase_line_id:
                qty = 0
                for inv_line in self.purchase_line_id.invoice_lines:
                    if not isinstance(inv_line.id, models.NewId) and inv_line.invoice_id.state not in ['cancel']:
                        if inv_line.invoice_id.type == 'in_invoice':
                            qty += inv_line.uom_id._compute_quantity(inv_line.quantity,
                                                                     self.purchase_line_id.product_uom)
                        elif inv_line.invoice_id.type == 'in_refund':
                            qty -= inv_line.uom_id._compute_quantity(inv_line.quantity,
                                                                     self.purchase_line_id.product_uom)

                qty_invoiced = qty

                qty = self.purchase_line_id.qty_received - qty_invoiced

                qty = self.purchase_line_id.product_uom._compute_quantity(qty, self.uom_id)

                if qty < self.quantity:
                    raise UserError(
                        _('It is not allowed to record an invoice for a quantity bigger than %s') % str(qty))
            else:
                message = _('It is not indicated to change the quantity of a stored product!')
        if message:
            return {
                'warning': {'title': "Warning", 'message': message},
            }
