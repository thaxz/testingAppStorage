//
//  OnboardingView.swift
//  testingAppStorage
//
//  Created by thaxz on 21/12/22.
//

import SwiftUI

struct OnboardingView: View {
   
    // to know in which step of onboarding is
    @State var onboardingState: Int = 0
    
    // to get user's data
    @State var usersName: String = ""
    @State var usersAge: Double = 50
    @State var usersGender: String = ""
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var isUserSignedIn: Bool = false
    
    
    // storing the transition to seem like it's sliding
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    // alert title and logic
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            // buttons
            VStack{
                Spacer()
                Button {
                    handleNextButtonPressed()
                } label: {
                    bottomButtom
                } 
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}
