//
//  JobDetailsView.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct JobDetailsView: View {
    var job: Job
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Date Posted:")
                        .fontWeight(.bold)
                    Text(job.datePosted)
                }
                HStack {
                    Text("Flexibility:")
                        .fontWeight(.bold)
                    Text(job.flexibility)
                }
                HStack {
                    Text("Remote Work Level:")
                        .fontWeight(.bold)
                    Text(job.remoteWorkLevel)
                }
                HStack {
                    Text("Location:")
                        .fontWeight(.bold)
                    Text(job.location)
                }
                HStack {
                    Text("Job Type:")
                        .fontWeight(.bold)
                    Text(job.jobType)
                        .lineLimit(1)
                }
                HStack {
                    Text("Job Schedule:")
                        .fontWeight(.bold)
                    Text(job.jobSchedule)
                        .lineLimit(1)
                }
                HStack {
                    Text("Career Level:")
                        .fontWeight(.bold)
                    Text(job.careerLevel)
                }
                HStack {
                    Text("Education Level:")
                        .fontWeight(.bold)
                    Text(job.educationLevel)
                }
                HStack {
                    Text("Travel Required:")
                        .fontWeight(.bold)
                    Text(job.travelRequired)
                }
                HStack {
                    Text("Salary & Benefits:")
                        .fontWeight(.bold)
                    Text(job.salary)
                }
            }
            Spacer()
        }.navigationBarTitle("Job Details")
            .frame(width: UIScreen.main.bounds.width - 10, alignment: .leading) // Hacky fix
    }
}

struct JobDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        JobDetailsView(job: Job(title: "Call Center Representative", flexibility: "Full-Time/Part-Time, 100% Remote Job", location: "Spearfish, SD", description: "Full-time or part-time position. Will listen to customers, resolve issues, explain processes, utilize systems and complete account management tasks. High school diploma and related experience required. Remote. $13.50/hr.", datePosted: "03/30/20", remoteWorkLevel: "100% Remote", jobType: "Employee, Alternative Schedule, Full-Time, Part-Time", jobSchedule: "Alternative Schedule, Full-Time, Part-Time", careerLevel: "Entry-Level", educationLevel: "High School Degree", travelRequired: "No specification", salary: "13.50 USD / Hourly"))
    }
}

