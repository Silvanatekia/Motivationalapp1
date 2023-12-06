//
//  ContentView.swift
//  MotivationalApp1
//
//  Created by Silvana Tekia on 09/11/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        if vm.authenticated{
            VStack(spacing: 20) {
                Text("Welcome back **\(vm.username.lowercased())**!")
                Text("Today is: **\(Date().formatted(.dateTime))**")
                Button("Log out", action: vm.logout)
                    .tint(.red)
                    .buttonStyle(.bordered)
                
            }
            
        }else {
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
                    Text ("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $vm.username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
            
                        
                    SecureField("Password",text: $vm.password)
                        .padding()
                        .frame(width:300, height: 50)
                        .cornerRadius(10)
                        .privacySensitive()
                        .background(Color.black.opacity(0.05))
                   
                    Button("Log in", action: vm.authenticate)
                        .buttonStyle(.bordered)
                        .foregroundColor(.white)
                        .background(Color.brown)
                        .frame(width: 300, height: 50)
                    
                    
                        Button("Forgot password?", action: vm.logPressed)
                            .tint(.red.opacity(0.8))
                       
                       
                    }
                    
                }
                .alert("Access denied", isPresented: $vm.invalid) {
                    Button("Dismiss", action: vm.logPressed)
                    
                }
                .transition(.offset(x: 0, y:850))
            }
            
        }
    }
    
    
    
    

