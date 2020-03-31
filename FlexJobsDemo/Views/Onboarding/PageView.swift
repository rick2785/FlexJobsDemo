//
//  PageView.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    
    @Binding var isOnboardingDone: Bool
    
    @State var currentPage: Int = 0
    
    init(_ views: [Page], isOnboardingDone: Binding<Bool>) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
        self._isOnboardingDone = isOnboardingDone
    }
    
    var body: some View {
        VStack {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            Spacer()
            Button(action: {
                if self.currentPage < self.viewControllers.count - 1 {
                    self.currentPage += 1
                } else {
                    self.isOnboardingDone.toggle()
                }
            }) {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 250, height: 50)
                    .foregroundColor(Color(red: 85/255, green: 202/255, blue: 203/255))
                .overlay(
                    Text(self.currentPage < self.viewControllers.count - 1 ? "NEXT" : "LOGIN")
                        .foregroundColor(.white)
                )
            }
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(cards.map { OnboardingCardView(card: $0) }, isOnboardingDone: .constant(false))
    }
}

