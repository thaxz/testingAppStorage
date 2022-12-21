//
//  ContentView.swift
//  testingAppStorage
//
//  Created by thaxz on 21/12/22.
//

import SwiftUI

struct IntroView: View {
    // to see if the user's signed in
    @AppStorage("signed_in") var isUserSignedIn: Bool = false
    
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
            if isUserSignedIn {
                ProfileView()
                    .transition(
                        .asymmetric(insertion: .move(edge: .bottom),
                                    removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(
                        .asymmetric(insertion: .move(edge: .top),
                                    removal: .move(edge: .bottom)))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
