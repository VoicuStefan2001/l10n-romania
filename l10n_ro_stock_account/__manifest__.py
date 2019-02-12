# -*- coding: utf-8 -*-
# ©  2008-2018 Fekete Mihai <mihai.fekete@forbiom.eu>
#              Dorin Hongu <dhongu(@)gmail(.)com
# See README.rst file on addons root folder for license details
{
    "name": "Romania - Stock Accounting",
    "version": "1.0",
    "author": "FOREST AND BIOMASS SERVICES ROMANIA, Terrabit",
    "website": "http://www.forbiom.eu",
    "category": "Warehouse",
    "depends": ['stock_account', 'account', 'l10n_ro_config', 'l10n_ro_stock', 'purchase'],

    'data': [
        'views/stock_view.xml',
        'views/stock_account_view.xml',
        'views/product_view.xml',
        'views/account_invoice_view.xml',
        'views/account_view.xml',
        'report/daily_stock_report_view.xml',
        'report/daily_stock_report_template.xml',
        'report/storage_sheet_report_view.xml',
        'report/storage_sheet_report_template.xml'
    ],
    'installable': True,
    'active': False,
}
