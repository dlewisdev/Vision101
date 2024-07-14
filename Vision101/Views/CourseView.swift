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
            
            Text(course.content)
            Spacer()
        }
        .padding(20)
        .navigationTitle(course.name)
    }
}

#Preview {
  CourseView(course: Course(name: "visionOS", content: "Content, content and content. Ut necessitatibus voluptate praesentium id eos eaque itaque cumque. Sunt error et et. Dignissimos veritatis eum ad eius omnis. Pariatur eaque nihil fuga omnis quia. Aperiam corporis odit vero aspernatur in recusandae.Delectus quo sed dolores quo architecto et necessitatibus aut. Velit impedit animi est. Sapiente animi nostrum aperiam quod ut eos."))
}
