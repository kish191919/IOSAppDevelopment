//
//  HomeView.swift
//  Restart
//
//  Created by Danny on 8/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        // MARK: - Property
        
        @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
        
        // MARK: - Body
        
        VStack (spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            Button(action: {
                //Some action
                isOnboardingViewActive = true
            }){
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
