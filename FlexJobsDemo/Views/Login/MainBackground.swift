//
//  MainBackground.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct MainBackground: View {
    var body: some View {
        Image("login-bg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
        .overlay(
            Rectangle()
                .fill(RadialGradient(gradient: Gradient(colors: [Color.init(red: 85/255, green: 172/255, blue: 238/255).opacity(0.6), Color.init(red: 53/255, green: 99/255, blue: 168/255).opacity(0.8)]), center: .topLeading, startRadius: 400, endRadius: 800))
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct MainBackground_Previews: PreviewProvider {
    static var previews: some View {
        MainBackground()
    }
}

