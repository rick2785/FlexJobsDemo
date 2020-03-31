//
//  LoginForm.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct LoginForm: View {
    @EnvironmentObject var auth: AuthVM
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            VStack {
                Input(placeholder: "Email", value: $email, type: InputTypes.text)
                Input(placeholder: "Password", value: $password, type: InputTypes.secure)
            }
            .padding(.top, 50)
            .padding(.leading, 30)
            .padding(.trailing, 30)
            
            CustomButton(text: "LOGIN") {
                if self.auth.login(email: self.email, password: self.password) {
                    self.email = ""
                    self.password = ""
                }
            }
            HStack {
                Text("Are you having trouble signing in?")
                    .foregroundColor(Color(red: 171/255, green: 171/255, blue: 171/255))
                    .font(.footnote)
                Button("Forgot Password") {
                    print("redirect to forgot password screen")
                }.foregroundColor(Color(red: 171/255, green: 171/255, blue: 171/255))
                    .font(.footnote)
            }.offset(y: -10)
            Spacer()
            Separator()
            CustomButton(text: "LOGIN WITH APPLE") {
                print("login using Apple")
            }
            HStack {
                Text("New here? Register")
                    .foregroundColor(Color(red: 171/255, green: 171/255, blue: 171/255))
                    .font(.footnote)
                Button("Here") {
                    print("go to register screen")
                }
                .foregroundColor(Color(red: 171/255, green: 171/255, blue: 171/255))
                .font(.footnote)
                .offset(x: -6)
            }.offset(y: -10)
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}

