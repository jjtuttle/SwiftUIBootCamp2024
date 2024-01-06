//
//  DestinationView.swift
//  SwiftUIBootCamp2024
//
//  Created by James Tuttle on 1/6/24.
//

import SwiftUI

struct DestinationView: View {
//    @StateObject private var viewModel = ContentViewModel()
    
//    @EnvironmentObject private var appController: AppController
    
    @Environment(AppController.self) var appController
    
    var body: some View {
        Text("Hello, \(appController.profile.name)")
    }
}


