//
//  Onboarding+Components.swift
//  testingAppStorage
//
//  Created by thaxz on 21/12/22.
//

import SwiftUI

extension OnboardingView {
    
    // screen components
    
    var bottomButtom: some View {
        Text("Sign In")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
    }
    
    var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            
            Text("Testing appStore and some other property wrappers.")
                .fontWeight(.medium)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            TextField("Your name here...", text: $usersName)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", usersAge))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $usersAge,
                   in: 18...100,
                   step: 1)
            .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Menu {
                Picker(selection: $usersAge) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                } label: {
                    EmptyView()
                }
            } label: {
                // if the number of character's bigger than one display users choice otherwise, default
                Text(usersGender.count > 1 ? usersGender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
}


