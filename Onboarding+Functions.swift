//
//  Onboarding+Functions.swift
//  testingAppStorage
//
//  Created by thaxz on 21/12/22.
//

import SwiftUI

extension OnboardingView {
    
    // when the button at the bottom of the screen is pressed the user must go to the next session
    func handleNextButtonPressed(){
        // checking inputs
        switch onboardingState {
        case 1:
            // making an alert if the username is too short
            guard usersName.count > 3 else {
                showAlert(title: "Your name must be at least 3 characters long! 😫")
                return
            }
        case 3:
            guard usersGender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward! 🥺")
                return
            }
        default:
            break
        }
    
        // sign in
        if onboardingState == 3 {
            signIn()
        // go to the next session
        } else {
            withAnimation(.spring()){
                onboardingState += 1
            }
        }
    }
    
    // signing in
    func signIn(){
        currentUserAge = Int(usersAge)
        currentUserName = usersName
        currentUserGender = usersGender
        withAnimation(.spring()) {
            isUserSignedIn = true
        }
    }
    
    //showing alert
    func showAlert(title: String){
        alertTitle = title
        showAlert.toggle()
    }
}
