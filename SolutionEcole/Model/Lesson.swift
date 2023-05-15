//
//  Lesson.swift
//  SolutionEcole
//
//  Created by Maxence de Cussac on 28/04/2023.
//

import Foundation

struct Lesson {
    var horaire_debut: Date
    var horaire_fin: Date
    var jour: Date
    var lieu: String
    var prof: String // Ou user aussi ?
    var lesson_type: LessonType
}

enum LessonType {
    case bachata
    case rueda
    case salsa
}

enum Salsa {
    case colombienne
    case cubaine
    case portoricaine
}
