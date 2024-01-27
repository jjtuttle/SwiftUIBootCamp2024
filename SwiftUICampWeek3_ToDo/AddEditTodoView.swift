//
//  AddEditTodoView.swift
//  SwiftUICampWeek3_ToDo
//
//  Created by James Tuttle on 1/27/24.
//

import SwiftUI

struct AddEditTodoView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    let todo: Todo
    
    @State private var isEditing = false
    @State private var title = ""
    @State private var summary = ""
    @State private var state: TodoState = .toBeDone
    
    @State private var taskText = ""
    @State private var orderedTasks: [Task] = []
    
    var body: some View {
        Form  {
            TextField("Title", text: $title)
            if isEditing {
                Picker(selection: $state) {
                    ForEach(TodoState.allCases) { state in
                        Button(state.rawValue) {
                            self.state = state
                        }
                        .tag(state.rawValue)
                    }
                } label: {
                    Text("State")
                }
                
                HStack{
                    TextField("Add task", text: $taskText)
                    Button {
                        addTask()
                    }  label: {
                        Image(systemName: "plus")
                    }
                    .disabled(taskText.isEmpty)
                }
            }
            
            if !orderedTasks.isEmpty {
                List {
                    Section("Tasks") {
                        ForEach(orderedTasks) { task in
                            Text(task.title)
                        }
                        .onDelete(perform: delete)
                    }
                }
            }
        }
        .onAppear {
            isEditing = todo.title != ""
            title = isEditing ? todo.title : ""
            state = isEditing ? TodoState(rawValue: todo.state) ?? .toBeDone : .toBeDone
            
            orderTasks()
        }
        .navigationTitle("\(isEditing ? "Edit" : "Add") todo")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    save()
                } label: {
                    Text("Save")
                }
                .disabled(title.isEmpty)
            }
        }
    }
        func addTask() {
            
        }
    
        func delete(_ indexSet: IndexSet) {
        
        }
    
    func orderTasks() {
        
    }
    
    func save() {
        if isEditing {
            
        } else {
            
        }
        dismiss()
    }
    }


