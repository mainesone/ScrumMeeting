//
//  ScrumMeetingApp.swift
//  ScrumMeeting
//
//  Created by Maik Nestler on 13.02.21.
//

import SwiftUI

@main
struct ScrumMeetingApp: App {
    @ObservedObject private var data = ScrumData()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $data.scrums) {
                    data.save()
                }
            }
            .onAppear {
                data.load()
            }
        }
    }
}
