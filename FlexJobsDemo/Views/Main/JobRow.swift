//
//  JobRow.swift
//  FlexJobsDemo
//
//  Created by RJ Hrabowskie on 3/30/20.
//  Copyright © 2020 RJ Hrabowskie. All rights reserved.
//

import SwiftUI

struct JobRow: View {
    var job: Job
    var body: some View {
        NavigationLink(destination: JobDetailsView(job: job)) {
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading, spacing: 2) {
                    Text(job.title)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color(red: 45/255, green: 103/255, blue: 176/255))
                    Text("\(job.flexibility)")
                        .foregroundColor(Color(.systemRed))
                    HStack {
                        Text("\(job.location)")
                            .foregroundColor(.primary)
                        Image(systemName: "mappin.and.ellipse")
                            .renderingMode(.original)
                    }
                    
                }
                Text(job.description)
                    .foregroundColor(.secondary)
            }.frame(width: UIScreen.main.bounds.width - 10, alignment: .leading) // Hacky fix
        }
    }
}

struct JobRow_Previews: PreviewProvider {
    static var previews: some View {
        JobRow(job: Job(title: "Call Center Representative", flexibility: "Full-Time/Part-Time, 100% Remote Job", location: "Spearfish, SD", description: "Full-time or part-time position. Will listen to customers, resolve issues, explain processes, utilize systems and complete account management tasks. High school diploma and related experience required. Remote. $13.50/hr.", datePosted: "03/30/20", remoteWorkLevel: "100% Remote", jobType: "Employee, Alternative Schedule, Full-Time, Part-Time", jobSchedule: "Alternative Schedule, Full-Time, Part-Time", careerLevel: "Entry-Level", educationLevel: "High School Degree", travelRequired: "No specification", salary: "13.50 USD / Hourly"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
