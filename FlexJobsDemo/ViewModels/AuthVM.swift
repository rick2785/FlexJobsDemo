//
//  AuthVM.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI
import Combine

class AuthVM: ObservableObject, Identifiable {
    @Published var token: UUID?
    
    func login(email: String, password: String) -> Bool {
        self.token = UUID()
        return true
    }
    
    func logout() {
        self.token = nil
    }
}
