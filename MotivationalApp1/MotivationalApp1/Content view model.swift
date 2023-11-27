//
//  Content view model.swift
//  MotivationalApp1
//
//  Created by Silvana Tekia on 09/11/2023.
//

import Foundation
import SwiftUI


    class ViewModel: ObservableObject {
        @AppStorage("AUTH_KEY") var authenticated = false {
            willSet {objectWillChange.send()}
        }
        @AppStorage("USER_KEY") var username = ""
        @Published var password = ""
        @Published var invalid: Bool = false
        
        private var sampleUser = "username"
        private var samplePassword = "password"
        
        init() {
            print("Currently logged on: \(authenticated)")
            print("Current user: \(username)")
        
        }
        
        func fetchusers() async{
            var request = URLRequest(url: URL(string: "https://motivationalapp.azurewebsites.net/api/users") ?? (NSURL()as URL))
            request.httpMethod = "GET"
            do {
                let (data, response) = try await URLSESSION.shared.data(for: request)
                
                
            }
            catch{
                
            }
        }
        func toggleAuthentication() {
            self.password=""
            
            withAnimation {
                authenticated.toggle()
            }
        }
        func authenticate() {
            guard self.username.lowercased() == sampleUser else {
                self.invalid = true
                return
            }
            
            guard self.password.lowercased() == samplePassword else {
                self.invalid = true
                return
            }
            
            toggleAuthentication()
        }
        func logOut() {
            toggleAuthentication()
        }
        func logPressed() {
            print("Button pressed.")
            
           
        }
    }

