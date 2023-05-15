//
//  SolutionEcoleApp.swift
//  SolutionEcole
//
//  Created by Maxence de Cussac on 11/04/2023.
//

import SwiftUI
import FirebaseCore



@main
struct SolutionEcoleApp: App {
    let persistenceController = PersistenceController.shared

    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
