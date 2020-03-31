//
//  LoginView.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var auth = AuthVM()
    
    var body: some View {
        GeometryReader { geometry in // Hacky Fix for TabView bug
            ZStack {
                ZStack {
                    MainBackground()
                    VStack(alignment: .leading) {
                        Text("LOGIN")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray6))
                        FormBackground().overlay(LoginForm())
                    }
                }.animation(.default)
                    .opacity(self.auth.token == nil ? 1.0: 0)
                    .environmentObject(self.auth)
                MainView()
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .topLeading)
                    .animation(.default)
                    .opacity(self.auth.token != nil ? 1.0 : 0)
                    .environmentObject(self.auth)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


