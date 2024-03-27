//
//  MotivationCategoryView.swift
//  Silvapp
//
//  Created by Silvana Tekia on 29/02/2024.
//

import SwiftUI

struct MotivationCategoryView: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color.white.opacity(0.9)
                    .ignoresSafeArea()
                List {
                    NavigationLink(destination: MotivationQuotesView(category: "Self Love")){
                        
                        Text("Self Love")
                            .bold()
                            .frame(width: 400, height: 120)
                            .background(Color.orange.opacity(0.5))
                            .padding(.bottom)
                        
                        
                    }
                    
                    NavigationLink(destination: MotivationQuotesView(category: "Gratitude")) {
                        Text("Gratitude")
                            .bold()
                            .frame(width: 400, height: 120)
                            .background(Color.green.opacity(0.5))
                            .padding(.zero)
                    }
                    NavigationLink(destination: MotivationQuotesView(category: "Financial Growth")) {
                        Text("Financial Growth")
                            .bold()
                            .frame(width: 400, height: 120)
                            .background(Color.blue.opacity(0.5))
                            .padding(.bottom)
                    }
                    NavigationLink(destination: MotivationQuotesView(category: "Spiritual Growth")) {
                        Text("Spiritual Growth")
                            .bold()
                            .frame(width: 400, height: 120)
                            .background(Color.pink.opacity(0.5))
                            .padding(.bottom)
                    }
                }
                .navigationBarTitle("Motivation Categories")
                .padding()
                .listStyle(GroupedListStyle())
                .offset(y: -15)
               
            }
            
        }
        .scrollContentBackground(.hidden)
        
    }
    
}
#Preview {
    MotivationCategoryView()
}
        

