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
        
        SkyView()
        
        RealityView { content in
            if let scene = try? await Entity(
                named: "ImmersiveScene",
                in: realityKitContentBundle) {
                content.add(scene)
            }
            guard let resource = try? await EnvironmentResource(named: "Sunlight") else { return }
            
        } update: { content in
            if let scene = content.entities.first {
                scene.availableAnimations.forEach {
                    animation in
                    scene.playAnimation(
                        animation.repeat(),
                        transitionDuration: 3,
                        startsPaused: false
                    )
                    
                    scene.orientation = simd_quatf(angle: Float.pi/4, axis: [-0.5, 0.0, 0.0])
                    
                    let orbit = OrbitAnimation(
                        duration: 10.0,
                        axis: SIMD3<Float>(
                            x: 0.1,
                            y: 1.0,
                            z: 0.0
                        ),
                        startTransform: scene.transform,
                        spinClockwise: false,
                        orientToPath: true,
                        rotationCount: 1.0,
                        bindTarget: .transform,
                        repeatMode: .repeat
                    )
                    
                    if let animation = try? AnimationResource.generate(
                        with: orbit
                    ) {
                        scene.playAnimation(
                            animation
                        )
                    }
                }
            }
        }
        .offset(
            y: -2000
        )
        .offset(
            z: -1500
        )
    }
}

#Preview {
    ImmersiveView()
}
