//
//  ContentView.swift
//  Vision101
//
//  Created by Danielle Lewis on 6/30/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentListView: View {
    @State private var selectedCourse: Course? = nil
    
    private var courses = [
        Course(name: "Window App"),
        Course(name: "Volume App"),
        Course(name: "Immersive App"),
        Course(name: "Ornaments"),
        Course(name: "App Icon"),
    ]
    
    var body: some View {
        TabView {
            NavigationSplitView {
                List(courses, selection: $selectedCourse) { course in
                    NavigationLink(course.name, value: course)
                }
            } detail: {
                if let selectedCourse = selectedCourse {
                    CourseView(course: selectedCourse)
                } else {
                    Text("Select a course from the list to see its details.")
                }
            }
                .tabItem {
                    Image(systemName: "window.awning.closed")
                    Text("Window")
                }
            Text("Window Tab")
                .font(.largeTitle)
                .foregroundStyle(.orange)
                .tabItem {
                    Image(systemName: "cube")
                    Text("Volume")
                }
            Text("Window Tab")
                .font(.largeTitle)
                .foregroundStyle(.orange)
                .tabItem {
                    Image(systemName: "globe")
                    Text("Immersive")
                }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentListView()
}
