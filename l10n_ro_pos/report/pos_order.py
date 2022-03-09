# ©  2015-2021 Deltatech
#              Dorin Hongu <dhongu(@)gmail(.)com
# See README.rst file on addons root folder for license details


from datetime import timedelta

import pytz

from odoo import api, fields, models
from odoo.osv.expression import AND


class ReportSaleDetails(models.AbstractModel):
    _inherit = "report.point_of_sale.report_saledetails"

    @api.model
    def get_sale_details(self, date_start=False, date_stop=False, config_ids=False, session_ids=False):

        res = super(ReportSaleDetails, self).get_sale_details(date_start, date_stop, config_ids, session_ids)

        domain = [("state", "in", ["paid", "invoiced", "done"])]

        if session_ids:
            domain = AND([domain, [("session_id", "in", session_ids)]])
        else:
            if date_start:
                date_start = fields.Datetime.from_string(date_start)
            else:
                # start by default today 00:00:00
                user_tz = pytz.timezone(self.env.context.get("tz") or self.env.user.tz or "UTC")
                today = user_tz.localize(fields.Datetime.from_string(fields.Date.context_today(self)))
                date_start = today.astimezone(pytz.timezone("UTC"))

            if date_stop:
                date_stop = fields.Datetime.from_string(date_stop)
                # avoid a date_stop smaller than date_start
                if date_stop < date_start:
                    date_stop = date_start + timedelta(days=1, seconds=-1)
            else:
                # stop by default today 23:59:59
                date_stop = date_start + timedelta(days=1, seconds=-1)

            domain = AND(
                [
                    domain,
                    [
                        ("date_order", ">=", fields.Datetime.to_string(date_start)),
                        ("date_order", "<=", fields.Datetime.to_string(date_stop)),
                    ],
                ]
            )

            if config_ids:
                domain = AND([domain, [("config_id", "in", config_ids)]])

        orders = self.env["pos.order"].search(domain)

        products_stock = {}
        products_sold = {}

        for order in orders:
            for line in order.lines:
                key = (line.product_id, line.price_unit, line.discount)
                products_sold.setdefault(key, 0.0)
                products_sold[key] += line.qty
            for picking in order.picking_ids:
                for move in picking.move_lines:
                    value = 0
                    quantity = 0
                    for valuation in move.stock_valuation_layer_ids:
                        if valuation.valued_type == "internal_transfer" and not valuation.account_move_id:
                            continue
                        if valuation.valued_type == "dropshipped" and valuation.value < 0:
                            continue
                        value += valuation.value
                        quantity += valuation.quantity
                    if quantity:
                        stock_price = value / (quantity or 1)
                    else:
                        stock_price = move.product_id.standard_price
                    products_stock.setdefault(move.product_id.id, 0.0)
                    products_stock[move.product_id.id] += -value

        products = []
        for (product, price_unit, discount), qty in products_sold.items():
            values = {
                "product_id": product.id,
                "product_name": product.name,
                "code": product.default_code,
                "quantity": qty,
                "price_unit": price_unit,
                "discount": discount,
                "uom": product.uom_id.name,
            }
            if product.id in products_stock:
                stock_price = products_stock[product.id] / qty if qty else 0
            else:
                stock_price = 0
            values["stock_price"] = stock_price

            products += [values]

        res["products"] = sorted(products, key=lambda l: l["product_name"])

        return res
