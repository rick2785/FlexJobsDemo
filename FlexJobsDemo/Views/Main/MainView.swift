//
//  MainView.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var auth: AuthVM
    @State private var activeTab: Int = 2
    
    var body: some View {
        TabView(selection: $activeTab) {
            Text("Feed").tabItem { Image(systemName: "person.2.fill") }.tag(1)
            JobsView().tabItem { Image(systemName: "list.bullet") }.tag(2)
            Button("Logout") {
                self.auth.logout()
            }.tabItem { Image(systemName: "gear") }.tag(3)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

