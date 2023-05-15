//
//  User.swift
//  SolutionEcole
//
//  Created by Maxence de Cussac on 28/04/2023.
//

import Foundation

struct User: Identifiable {
    var birthday: Date
    var id: Int
    var mail: String
    var nom: String
    var prenom: String
    var pseudo: String
    var qrCode:String
    var role: Role
    var phone: String
}

enum Role {
    case danseur
    case staff
}
