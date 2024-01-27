//
//  SwiftUICampWeek3_ToDoApp.swift
//  SwiftUICampWeek3_ToDo
//
//  Created by James Tuttle on 1/20/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftUICampWeek3_ToDoApp: App {
    
    let container: ModelContainer
    
    init() {
        do {
            container = try ModelContainer(for: Todo.self, Task.self, migrationPlan: nil)
        } catch {
            fatalError("Failed to laod container!")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
            .modelContainer(container)
        }
    }
}
