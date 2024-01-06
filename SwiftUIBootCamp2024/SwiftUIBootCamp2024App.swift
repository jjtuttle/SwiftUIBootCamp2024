//
//  SwiftUIBootCamp2024App.swift
//  SwiftUIBootCamp2024
//
//  Created by James Tuttle on 1/6/24.
//

import SwiftUI

@main
struct SwiftUIBootCamp2024App: App {
    
    @State private var appController = AppController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appController)
        }
    }
}
