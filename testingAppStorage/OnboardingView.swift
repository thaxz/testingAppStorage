//
//  OnboardingView.swift
//  testingAppStorage
//
//  Created by thaxz on 21/12/22.
//

import SwiftUI

struct OnboardingView: View {
   
    // to know in witch step of onboarding is
    @State var onboardingState: Int = 0
    
    var body: some View {
        ZStack {
            //background
            RadialGradient(colors: [Color.purple, Color.indigo],
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .edgesIgnoringSafeArea(.all)
            
            // if the user is signed in shows profile
            // else shows onboarding
            
            
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
