# License AGPL-3.0 or later (http://www.gnu.org/licenses/agpl.html).
{
    "name": "Romania - Stock Accounting Check",
    "license": "AGPL-3",
    "version": "14.0.1.0.0",
    "author": "Terrabit,NextERP Romania,Odoo Community Association (OCA)",
    "website": "https://github.com/OCA/l10n-romania",
    "category": "Warehouse",
    "depends": [
        "l10n_ro_stock_account",
        "date_range",
    ],
    "data": [
        "report/stock_check_report_view.xml",
        "security/ir.model.access.csv",
    ],
    "installable": True,
    "maintainers": ["dhongu"],
}
