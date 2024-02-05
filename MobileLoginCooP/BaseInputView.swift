//
//  Input.swift
//  CountriesSwiftUI
//
//  Created by eleman on 05/02/2024.
//  Copyright © 2024 Alexey Naumov. All rights reserved.
//

import Foundation
import SwiftUI

struct BaseInputView: View {
    @Binding var text: String;
    let paceholder: String
    let leftIconName: String
    let rightIconName: String
    var body: some View {
        HStack {
            Button(action: {
                print("Left icon tapped")
            }) {
                InputIcon(iconName: leftIconName)
            }
            
            TextField(paceholder, text: $text)
                .textFieldStyle(PlainTextFieldStyle())
                .background(Color.clear)
                .padding(.horizontal, 10)
            
            Button(action: {
                print("Right icon tapped")
            }) {
                InputIcon(iconName: rightIconName)
            }
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 1))
        .padding()
    }
}

extension BaseInputView {
    func InputIcon(iconName: String) -> some View {
        Image(iconName).foregroundColor(.gray)
    }
}
