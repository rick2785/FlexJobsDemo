//
//  Input.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

enum InputTypes {
    case text
    case secure
}

struct Input: View {
    var placeholder: String
    var value: Binding<String>
    var type: InputTypes
    
    var body: some View {
        VStack {
            Group {
                if (self.type == InputTypes.text) {
                    TextField(self.placeholder, text: self.value)
                } else {
                    SecureField(self.placeholder, text: self.value)
                }
            }
            Rectangle()
                .fill(Color(.systemGray2))
                .frame(height: 1)
        }
    }
}

