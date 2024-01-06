//
//  ContentView.swift
//  SwiftUIBootCamp2024
//
//  Created by James Tuttle on 1/6/24.
//

import SwiftUI

struct ContentView: View {
//    @State private var profile = Profile()
// MARK: - Properties
//    @StateObject private var viewModel =  ViewModel()
    
    @Environment(AppController.self) var appController
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(appController.profile.name)
            MyTextField("Name", text: Bindable(appController).profile.name)
            Button("Tap me")  {
                buttonTapped()
            }
        }
        .padding()
    }
    func buttonTapped() {
        appController.buttonTapped()
    }
    
}

#Preview {
    ContentView()
        .environment(AppController())
}

// MARK: - View Model

fileprivate extension ContentView {
    class ViewModel: ObservableObject {
        
        
    }
}
