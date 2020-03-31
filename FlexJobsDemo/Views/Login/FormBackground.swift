//
//  FormBackground.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct FormBackground: View {
    private var width: CGFloat = 350
    private var height: CGFloat = 400
    private var cornerRadius: CGFloat = 30
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(Color(.systemGray6))
            .frame(width: width, height: height, alignment: .center)
    }
}

struct FormBackground_Previews: PreviewProvider {
    static var previews: some View {
        FormBackground()
    }
}

