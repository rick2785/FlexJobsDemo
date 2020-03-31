//
//  OnboardingCardView.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct OnboardingCardView: View {
    var card: OnboardingCard
    
    var body: some View {
        VStack {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300, alignment: .center)
            Text(card.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text(card.description)
                .lineLimit(5)
                .multilineTextAlignment(.center)
                .font(.body)
                .foregroundColor(.secondary)
                .padding()
        }.padding()
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(card: cards[0])
    }
}

