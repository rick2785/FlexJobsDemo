//
//  Separator.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct Separator: View {
    var body: some View {
        HStack(alignment: .center) {
            Rectangle()
                .fill(Color(red: 171/255, green: 171/255, blue: 171/255))
                .frame(width: 100, height: 1)
            Text("OR")
                .font(.footnote)
                .foregroundColor(Color(red: 171/255, green: 171/255, blue: 171/255))
            Rectangle()
                .fill(Color(red: 171/255, green: 171/255, blue: 171/255))
                .frame(width: 100, height: 1)
        }
    }
}

struct Separator_Previews: PreviewProvider {
    static var previews: some View {
        Separator()
    }
}

