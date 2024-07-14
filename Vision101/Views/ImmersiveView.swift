//
//  ImmersiveView.swift
//  Vision101
//
//  Created by Danielle Lewis on 7/14/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            if let scene = try? await Entity(named: "ImmersiveScene", in: realityKitContentBundle) {
                content.add(scene)
            }
        } update: { content in
            if let scene = content.entities.first {
                scene.availableAnimations.forEach {
                    animation in
                    scene.playAnimation(animation.repeat(), transitionDuration: 3, startsPaused: false)
                }
            }
        }
        .offset(y: -2000)
        .offset(z: -1500)
    }
}

#Preview {
    ImmersiveView()
}
