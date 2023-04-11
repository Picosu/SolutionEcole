//
//  SolutionEcoleApp.swift
//  SolutionEcole
//
//  Created by Maxence de Cussac on 11/04/2023.
//

import SwiftUI

@main
struct SolutionEcoleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
