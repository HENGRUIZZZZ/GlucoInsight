//
//  GlucoInsightApp.swift
//  GlucoInsight
//
//  Created by YI HE on 2024/7/17.
//

import SwiftUI
import SwiftData

@main
struct GlucoInsightApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            //  ContentView()
           DemoView()
        }
        .modelContainer(sharedModelContainer)
    }
}
