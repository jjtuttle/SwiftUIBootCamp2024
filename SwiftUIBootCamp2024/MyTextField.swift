//
//  MyTextField.swift
//  SwiftUIBootCamp2024
//
//  Created by James Tuttle on 1/6/24.
//

import SwiftUI

struct MyTextField: View {
    private let title: String
    @Binding private var text: String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        TextField(title, text: $text)
            .textFieldStyle(.roundedBorder)
    }
}

