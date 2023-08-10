//
//  OnboardingView.swift
//  Restart
//
//  Created by Danny on 8/10/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Property
    
    @AppStorage("onboarding") var isOnboardingViewAction: Bool = true
    
    // MARK: - Body
    var body: some View {
        VStack (spacing: 20){
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                // Some action
                isOnboardingViewAction = false
            }){
                Text("Start")
            }
        } //: Vstack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
