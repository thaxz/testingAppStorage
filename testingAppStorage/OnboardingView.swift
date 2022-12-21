//
//  OnboardingView.swift
//  testingAppStorage
//
//  Created by thaxz on 21/12/22.
//

import SwiftUI

struct OnboardingView: View {
   
    // to know in witch step of onboarding is
    @State var onboardingState: Int = 3
    
    // to get user's data
    @State var usersName: String = ""
    @State var usersAge: Double = 50
    @State var usersGender: String = ""
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            // buttons
            VStack{
                Spacer()
                Button {
                    
                } label: {
                    bottomButtom
                } 
            }
            .padding(30)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}
