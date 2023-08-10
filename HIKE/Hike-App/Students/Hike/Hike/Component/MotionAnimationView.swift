//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Danny on 8/9/23.
//

import SwiftUI

struct MotionAnimationView: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.white)
        }
        .frame(width: 256, height: 256)
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
