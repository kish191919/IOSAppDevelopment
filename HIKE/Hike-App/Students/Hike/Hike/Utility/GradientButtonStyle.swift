//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Danny on 8/8/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                // Conditional Statement
                // Condition ? A : B
                configuration.isPressed ?
                // A: When User Pressed the Button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
                :
                // B: When the Button is not pressed
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
            
    }
}
