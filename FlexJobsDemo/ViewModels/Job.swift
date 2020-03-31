//
//  Job.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import Foundation

struct Job: Identifiable {
    var id: UUID = UUID()
    var title: String
    var flexibility: String
    var location: String
    var description: String
    var datePosted: String
    var remoteWorkLevel: String
    var jobType: String
    var jobSchedule: String
    var careerLevel: String
    var educationLevel: String
    var travelRequired: String
    var salary: String
}
