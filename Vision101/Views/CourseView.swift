//
//  CourseView.swift
//  Vision101
//
//  Created by Danielle Lewis on 6/30/24.
//

import SwiftUI

struct CourseView: View {
    let course: Course
    
    var body: some View {
        VStack {
            Text(course.name)
                .font(.largeTitle)
        }
        .navigationTitle(course.name)
    }
}

#Preview {
    CourseView(course: Course(name: "visionOS"))
}
