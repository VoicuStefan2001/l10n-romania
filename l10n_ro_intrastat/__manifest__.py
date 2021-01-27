##############################################################################
#
#    Odoo, Open Source Business Applications
#    Copyright (C) 2014-2015 Odoo S.A. <http://www.odoo.com>
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
#    along with this program. If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################

{
    "name": "Romanian  Intrastat Declaration",
    "version": "1.0",
    "category": "Reporting",
    "description": """
Generates Intrastat XML report for declaration
Based on invoices.
New report for invoice
    """,
    "author": "Dorin Hongu",
    "depends": [
        # 'report_intrastat',
        "product",
        "sale",
        "account",
        "l10n_ro",
    ],
    "data": [
        "data/country_data.xml",
        # 'data/report.intrastat.code.csv',
        "data/transaction.codes.xml",
        "data/transport.modes.xml",
        "security/groups.xml",
        "security/ir.model.access.csv",
        "views/l10n_ro_intrastat_view.xml",
        "views/product_view.xml",
        "views/res_country_view.xml",
        "views/account_intrastat_code_view.xml",
        "wizard/l10n_ro_intrastat_xml_view.xml",
        # 'views/report_invoice.xml'
    ],
    "installable": True,
}
