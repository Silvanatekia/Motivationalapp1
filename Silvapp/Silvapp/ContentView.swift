//
//  ContentView.swift
//  Silvapp
//
//  Created by Silvana Tekia on 02/11/2023.
//

import SwiftUI

struct ContentView: View {
    //@StateObject var vm = ViewModel()
        @State private var isLoggedIn = false
        
        var body: some View {
            if isLoggedIn {
                MotivationCategoryView()
                    
            } else {
                LoginView(isLoggedIn: $isLoggedIn)
            }
                
        }
    }
            
struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack{
                    Color.brown.opacity(0.90)
                        .ignoresSafeArea()
                    Circle()
                        .scale(1.7)
                        .foregroundColor(.white.opacity(0.3))
                    Circle()
                        .scale(1.35)
                        .foregroundColor(.white.opacity(0.3))
                    VStack {
                        Spacer()
                        
                        Text ("Login")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        
                        TextField("Username", text: $username)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                        
                        Button(action: {
                          
                            if username == "username" && password == "password" {
                                isLoggedIn = true
                            } else {
                                showAlert = true
                            }
                        }) {
                            Text("Login")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.brown)
                                .cornerRadius(8)
                                .padding(.horizontal)
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("Invalid Credentials"), message: Text("Please enter correct username and password."), dismissButton: .default(Text("OK")))
                        }
                        
                        Spacer()
                    }
                }
                .background(Color.blue.edgesIgnoringSafeArea(.all))
            }
        }
    }
}

#Preview {
    ContentView()
}
    

