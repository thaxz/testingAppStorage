//
//  ProfileView.swift
//  testingAppStorage
//
//  Created by thaxz on 21/12/22.
//

import SwiftUI

struct ProfileView: View {
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var isUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Button {
                 signOut()
            } label: {
                Text("SIGN OUT")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.bold)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 20)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 10)
        .padding(20)
    }
        
    
    func signOut(){
        currentUserAge = nil
        currentUserName = nil
        currentUserGender = nil
        withAnimation(.spring()){
            isUserSignedIn = false
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
