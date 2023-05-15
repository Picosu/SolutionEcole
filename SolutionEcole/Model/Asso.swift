//
//  Asso.swift
//  SolutionEcole
//
//  Created by Maxence de Cussac on 28/04/2023.
//

import Foundation

struct Asso {
    var SIRET: String
    var correspondant_asso: String
    var cours : String // Enum peut être ?
    var nom: String
    var responsable_legal: String
    var telephone_asso: String
    var telephone_responsable: String
    var user_admin: String // Ou un user ?
    var user_admin_password: String // Doit être encodé et décodé => A check
}
