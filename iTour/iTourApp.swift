//
//  iTourApp.swift
//  iTour
//
//  Created by Paranoid Coder on 09/02/25.
//

import SwiftUI
import SwiftData

@main
struct iTourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for:Destination.self)
    }
}
