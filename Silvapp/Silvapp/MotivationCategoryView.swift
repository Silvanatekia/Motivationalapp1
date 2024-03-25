//
//  MotivationCategoryView.swift
//  Silvapp
//
//  Created by Silvana Tekia on 29/02/2024.
//

import SwiftUI

struct MotivationCategoryView: View {
    var body: some View {
        
        NavigationView {
                
            VStack {
              Color.brown.opacity(0.90)
                    .ignoresSafeArea()
                    List {
                        NavigationLink(destination: MotivationQuotesView(category: "Self Love")) {
                            Text("Self Love")
                        }
                        NavigationLink(destination: MotivationQuotesView(category: "Gratitude")) {
                            Text("Gratitude")
                        }
                        NavigationLink(destination: MotivationQuotesView(category: "Financial Growth")) {
                            Text("Financial Growth")
                        }
                        NavigationLink(destination: MotivationQuotesView(category: "Spiritual Growth")) {
                            Text("Spiritual Growth")
                        }
                    }
                    .navigationBarTitle("Motivation Categories")
                    .listStyle(GroupedListStyle())
                }
            .background(Color.brown.opacity(0.90).ignoresSafeArea(.all))
            }
        
            
        }
        
    }

        

