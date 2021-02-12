//
//  AppApp.swift
//  App
//
//  Created by Aji Saputra Raka Siwi on 10/02/21.
//

import SwiftUI

@main
struct AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
