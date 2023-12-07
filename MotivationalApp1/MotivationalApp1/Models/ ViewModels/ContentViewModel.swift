//
//  ContentViewModel.swift
//  MotivationalApp1
//
//  Created by Silvana Tekia on 27/11/2023.
//
import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @AppStorage("AUTH_KEY") var authenticated = false {
        willSet { objectWillChange.send() }
    }
    @AppStorage("USER_KEY") var username = ""
    @Published var password = ""
    @Published var invalid: Bool = false
    @Published var users: [User] = []

    private var sampleUser = "username"
    private var samplePassword = "password"

    init() {
        print("Currently logged on: \(authenticated)")
        print("Current user: \(username)")
    }

    func fetchUsersFromAPI() async {
        var request = URLRequest(url: URL(string: "https://motivationalapp.azurewebsites.net/api/users")!)
        request.httpMethod = "GET"

        do {
            let (data,_) = try await URLSession.shared.data(for: request)
            let decodedUsers = try JSONDecoder().decode([User].self, from: data)
            self.users = decodedUsers
        } catch {
           
            print("Error fetching users: \(error.localizedDescription)")
        }
    }

    func toggleAuthentication() {
        self.password = ""
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

