//
//  ScrumMeetingModel.swift
//  ScrumMeeting
//
//  Created by Maik Nestler on 14.02.21.
//

import SwiftUI

struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    var history: [History]
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color, history: [History] = []) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
        self.history = history
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Bodo", "Fritz", "Kalle"], lengthInMinutes: 10, color: Color(.red)),
            DailyScrum(title: "App Dev", attendees: ["Mark", "Mario", "Anton", "Emil"], lengthInMinutes: 5, color: Color(.blue)),
            DailyScrum(title: "Web Dev", attendees: ["Klaus", "Otto", "Stu", "Enis", "Dennis", "Harry", "Kate", "Marie"], lengthInMinutes: 1, color: Color(.yellow))
        ]
    }
}

extension DailyScrum {
    struct Data {
        var title: String = ""
        var attendees: [String] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = .random
    }
    
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        color = data.color
    }
}
