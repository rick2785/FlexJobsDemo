//
//  ContentView.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

var cards: [OnboardingCard] = [
    OnboardingCard(image: "keep", title: "Get Started Now", description: "As the leading, most trusted job service in the flexible work field, we offer a long list of benefits to help our members find great jobs, and we are proud to have a track record to prove it! "),
    OnboardingCard(image: "buy&sell", title: "Tour FlexJobs", description: "Every single job on FlexJobs is reviewed by an intelligent human for legitimacy. Only those that pass our screening are allowed on FlexJobs."),
    OnboardingCard(image: "exchange", title: "Research Companies", description: "Use the best and most comprehensive free list of companies, including the Top 100 Companies for Flexible Jobs")
]

struct ContentView: View {
    @State var isOnboardingDone = false
    
    var body: some View {
        Group {
            if isOnboardingDone {
                LoginView()
            } else {
                PageView(cards.map { OnboardingCardView(card: $0) }, isOnboardingDone: $isOnboardingDone)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
