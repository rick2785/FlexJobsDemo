//
//  JobsView.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct JobsView: View {
    var jobs: [Job] = [
        Job(title: "Call Center Representative", flexibility: "Full-Time/Part-Time, 100% Remote Job", location: "Spearfish, SD", description: "Full-time or part-time position. Will listen to customers, resolve issues, explain processes, utilize systems and complete account management tasks. High school diploma and related experience required. Remote. $13.50/hr.", datePosted: "03/30/20", remoteWorkLevel: "100% Remote", jobType: "Employee, Alternative Schedule, Full-Time, Part-Time", jobSchedule: "Alternative Schedule, Full-Time, Part-Time", careerLevel: "Entry-Level", educationLevel: "High School Degree", travelRequired: "No specification", salary: "13.50 USD / Hourly"),

        Job(title: "Network Engineer", flexibility: "Full-Time, 100% Remote Job", location: "US National", description: "Remote role handling network engineering, monitoring, security, and maintenance of all systems. A bachelors degree and 5 years of networking experience are required. Cisco certification is desired.", datePosted: "03/30/20", remoteWorkLevel: "100% Remote", jobType: "Employee, Full-Time", jobSchedule: "Full-Time", careerLevel: "Experienced", educationLevel: "Bachelor's Degree", travelRequired: "No specification", salary: "50.50 USD / Hourly"),
        Job(title: "DevOps Engineer - Kubernetes", flexibility: "Full-Time, Partial Remote Job", location: "Work from Anywhere", description: "Kubernetes DevOps engineer needed for a full-time opportunity. This contract position is remote with travel. Will be responsible for working with open source and blog posts, interacting with clients, and working on internal and external projects.", datePosted: "03/30/20", remoteWorkLevel: "Partial Remote", jobType: "Freelance, Full-Time", jobSchedule: "Full-Time", careerLevel: "Experienced", educationLevel: "Bachelor's Degree", travelRequired: "Yes, a bit", salary: "35.00 USD / Hourly"),
        Job(title: "Customer Service Representative", flexibility: "Full-Time, 100% Remote Job", location: "Folsom, CA ", description: "Provide customer services on an early morning shift and earn $14 hourly. Work-at-home role answer calls, providing information, and resolving problems. Must have a year of experience and good typing and interpersonal skills.", datePosted: "03/30/20", remoteWorkLevel: "100% Remote", jobType: "Employee, Full-Time, Alternative Schedule", jobSchedule: "Full-Time, Alternative Schedule", careerLevel: "Entry-Level", educationLevel: "N/A", travelRequired: "No specification", salary: "14.00 USD / Hourly"),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(jobs, id: \.id) { job in
                    JobRow(job: job).padding()
                }.navigationBarTitle("Job Listing")
            }
        }
    }
}

struct JobssView_Previews: PreviewProvider {
    static var previews: some View {
        JobsView()
    }
}
