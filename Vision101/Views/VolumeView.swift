//
//  VolumeView.swift
//  Vision101
//
//  Created by Danielle Lewis on 7/2/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct VolumeView: View {
    @State var runAnimation = false
    
    var body: some View {
        VStack {
            Button("Start") {
                runAnimation.toggle()
            }
            
            RealityView { content in
                if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
                    content.add(scene)
                }
            } update: { content in
                if let scene = content.entities.first {
                    scene.availableAnimations.forEach { animation in
                        if runAnimation {
                            scene.playAnimation(animation.repeat(), transitionDuration: 3, startsPaused: false)
                        } else {
                            scene.stopAllAnimations()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    VolumeView()
}
