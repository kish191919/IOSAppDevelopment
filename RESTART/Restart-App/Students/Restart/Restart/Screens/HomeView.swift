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
//            Text("Home")
//                .font(.largeTitle)
            
            // MARK: - HEADER
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            
            // MARK: - CENTER
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            // MARK: - FOOTER
            
            Spacer()
            
            
            
            Button(action: {
                //Some action
                isOnboardingViewActive = true
            }){
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
