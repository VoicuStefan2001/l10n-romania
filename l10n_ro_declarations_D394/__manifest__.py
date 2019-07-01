# -*- coding: utf-8 -*-
# ©  2018 Terrabit
# See README.rst file on addons root folder for license details

{
    "name": "Deltatech Declaratii ANAF D394",
    'version': '11.0.1.0.0',
    "author": "Terrabit, Dorin Hongu",
    "website": "www.terrabit.ro",
    "description": """
    
   
    """,

    "category": "Generic Modules",
    "depends": [
        'account',
        'l10n_ro',
        'l10n_ro_config',
        'l10n_ro_declarations',
    ],

    "data": [

        'views/d394_view.xml',
        'views/declaration_view.xml'
    ],

    "active": False,
    "installable": True,
    'application': False,
}
