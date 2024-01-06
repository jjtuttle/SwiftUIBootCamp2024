//
//  AppController.swift
//  SwiftUIBootCamp2024
//
//  Created by James Tuttle on 1/6/24.
//

import SwiftUI

@Observable
class AppController {
    
    var profile = Profile()
    
    func buttonTapped() {
        profile.name = "James"
    }
}
