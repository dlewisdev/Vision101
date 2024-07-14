//
//  Vision101App.swift
//  Vision101
//
//  Created by Danielle Lewis on 6/30/24.
//

import SwiftUI

@main
struct Vision101App: App {
    @State private var currentStyle: ImmersionStyle = .full
    
    var body: some Scene {
        WindowGroup {
            ContentListView()
        }
        .windowStyle(.plain)
        
        ImmersiveSpace(id: "ImmersiveScene") {
            ImmersiveView()
        }
        .immersionStyle(selection: $currentStyle, in: .full)
    }
}
