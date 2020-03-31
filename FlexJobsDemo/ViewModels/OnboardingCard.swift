//
//  OnboardingCard.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import Foundation

struct OnboardingCard: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}
