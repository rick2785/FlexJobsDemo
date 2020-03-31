//
//  CustomButton.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors: [Color.init(red: 53/255, green: 99/255, blue: 168/255), Color.init(red: 85/255, green: 172/255, blue: 238/255)]),startPoint: .leading, endPoint: .trailing))
                .frame(height: 38)
                .padding()
                .overlay(
                    Text(self.text)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                )
        }
    }
}

