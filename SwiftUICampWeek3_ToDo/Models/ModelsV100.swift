//
//  ModelsV100.swift
//  SwiftUICampWeek3_ToDo
//
//  Created by James Tuttle on 1/27/24.
//

import SwiftUI
import SwiftData

enum ModellsV100: VersionedSchema {
    
    static var versionIdentifier = Schema.Version(1,0,0)
    
    static var models: [any PersistentModel.Type] {
        [Todo.self]
    }
    
    @Model
    class Todo {
        var title: String = ""
        var updatedAt: Date = Date.now
        var state: String = TodoState.toBeDone.rawValue
        @Relationship(deleteRule: .cascade)
        var tasks: [Task]? = [Task]()
        
        init(title: String,
             updatedAt: Date = Date.now,
             state: String = TodoState.toBeDone.rawValue,
             tasks: [Task]? = [Task]()) {
            self.title = title
            self.updatedAt = updatedAt
            self.state = state
            self.tasks = tasks
        }
    }
    
    enum TodoState: String, Codable, CaseIterable, Identifiable {
        case toBeDone = "To be done"
        case doing = "Doing"
        case done = "Done"
        
        var id: Self {
            return self
        }
    }
    
    @Model
    class Task {
        var title: String = ""
        var createdAt: Date = Date.now
        @Relationship(inverse: \Todo.tasks)
        var todo: Todo?
        
        init(title: String, 
             createdAt: Date = Date.now,
             todo: Todo?) {
            self.title = title
            self.createdAt = createdAt
            self.todo = todo
        }
    }
    
}
