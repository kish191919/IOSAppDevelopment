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
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack (spacing: 20){
//                Text("Onboarding")
//                    .font(.largeTitle)
//
//                Button(action: {
//                    // Some action
//                    isOnboardingViewAction = false
//                }){
//                    Text("Start")
//                }
                // MARK: - HEADER
                
                Spacer()
                
                VStack(spacing: 0){
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but
                    how much love we put into giving.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                    
                } //: HEADER
                
                // MARK: - CENTER
                ZStack{
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                    
                } //:Center
                
                Spacer()
                
                // MARK: - FOOTER
                
                ZStack{
                    // Parts of the custom button
                    
                    // 1. Background(Static)
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    // 2. Call to action (Static)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    
                    // 3. Capsule (Dynamic Width)
                    
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    
                    // 4. Circle (Draggable)
                    
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewAction = false
                        }
                        
                        
                        Spacer()
                    }//: Hstack
                    
                    
                }//: Footer
                .frame(height: 80, alignment: .center)
                .padding()
                
                
            } //:Vstack
        } //: Zstack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
