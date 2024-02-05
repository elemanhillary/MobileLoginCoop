//
//  WelcomeImageTextView.swift
//  CountriesSwiftUI
//
//  Created by eleman on 05/02/2024.
//  Copyright © 2024 Alexey Naumov. All rights reserved.
//

import Foundation
import SwiftUI

struct WelcomeImageTextView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 84, height: 91)
                .padding(.top, 16)
            Text("Welcome to Co-op Bank").font(.headline).foregroundColor(Color(hex: "#7AC043"))
        }
    }
}

