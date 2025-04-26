//
//  PersonFactApp.swift
//  PersonFact
//
//  Created by Daniel A on 2025-04-26.
//

import SwiftUI
import SwiftData

@main
struct PersonFactApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
