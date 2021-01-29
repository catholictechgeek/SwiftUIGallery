//
//  SwiftControlsApp.swift
//  SwiftControls
//
//  Created by Steven Nowak on 1/29/21.
//

import SwiftUI

@main
struct SwiftControlsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
