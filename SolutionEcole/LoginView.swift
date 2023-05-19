//
//  LoginView.swift
//  SolutionEcole
//
//  Created by Maxence de Cussac on 09/05/2023.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var isOn: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                login(username: username, password: password)
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
            Toggle(isOn: $isOn) {
                        Text("I'm not a robot")
                    }
                    .toggleStyle(ButtonToggleStyle())
        }
        .padding()
        .fullScreenCover(isPresented: $isLoggedIn) {
            if isOn {
                
            } else {
                ContentView()
            }
        }
    }
    
    private func login(username: String, password: String) {
        // Call your login function with the username and password parameters here
        // ...
        // If login is successful, set isLoggedIn to true to open the CourseListView
        Auth.auth().signIn(withEmail: username, password: password) { authResult, error in
            print("username \(username) | password \(password) ")
            print("\(authResult) \n \(error)")
            isLoggedIn = authResult != nil
        }
    }
}

struct CourseListView: View {
    var body: some View {
        Text("Course List")
            .font(.title)
            .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
/*
 import SwiftUI

 struct LoginView: View {
     @State private var username: String = ""
     @State private var password: String = ""
     @State private var isLoggedIn: Bool = false
     
     var body: some View {
         VStack(spacing: 20) {
             TextField("Username", text: $username)
                 .textFieldStyle(RoundedBorderTextFieldStyle())
             
             SecureField("Password", text: $password)
                 .textFieldStyle(RoundedBorderTextFieldStyle())
             
             Button(action: {
                 login(username: username, password: password)
             }) {
                 Text("Login")
                     .foregroundColor(.white)
                     .padding(.vertical, 10)
                     .frame(maxWidth: .infinity)
                     .background(Color.blue)
                     .cornerRadius(10)
             }
         }
         .padding()
         .fullScreenCover(isPresented: $isLoggedIn) {
             CourseListView()
         }
     }
     
     private func login(username: String, password: String) {
         // Call your login function with the username and password parameters here
         // ...
         
         // If login is successful, set isLoggedIn to true to open the CourseListView
         isLoggedIn = true
     }
 }


 */
