//
//  MotivationalQuoteView.swift
//  Silvapp
//
//  Created by Silvana Tekia on 29/02/2024.
//

import SwiftUI

struct MotivationQuotesView: View {
    let category: String
    let quotes: [String]
    @State private var currentQuoteIndex = 0
    
    var backgroundColor: Color {
        switch category {
        case "Self Love":
            return Color.orange.opacity(0.5)
        case "Gratitude":
            return Color.green.opacity(0.5)
        case "Financial Growth":
            return Color.blue.opacity(0.5)
        case "Spritual Growth":
            return Color.pink.opacity(0.5)
    default:
        return Color.pink.opacity(0.5)
    }
    }
    
    init(category: String) {
        self.category = category
            
        
        
        switch category {
        case "Self Love":
            self.quotes = [
                "Love yourself first and everything else falls into line. You really have to love yourself to get anything done in this world. - Lucille Ball",
                "To love oneself is the beginning of a lifelong romance. - Oscar Wilde",
                "Self-love, my liege, is not so vile a sin, as self-neglecting. - William Shakespeare"
            ]
        case "Gratitude":
            self.quotes = [
                "Gratitude is the healthiest of all human emotions. The more you express gratitude for what you have, the more likely you will have even more to express gratitude for. - Zig Ziglar",
                "Be thankful for what you have; you'll end up having more. If you concentrate on what you don't have, you will never, ever have enough. - Oprah Winfrey",
                "Gratitude can transform common days into thanksgivings, turn routine jobs into joy, and change ordinary opportunities into blessings. - William Arthur Ward"
            ]
        case "Financial Growth":
            self.quotes = [
                "The stock market is filled with individuals who know the price of everything, but the value of nothing. - Philip Fisher",
                "The stock market is a device for transferring money from the impatient to the patient. - Warren Buffett",
                "The individual investor should act consistently as an investor and not as a speculator. - Benjamin Graham"
            ]
        case "Spiritual Growth":
            self.quotes = [
                "The path to our destination is not always a straight one. We go down the wrong road, we get lost, we turn back. Maybe it doesn't matter which road we embark on. Maybe what matters is that we embark. - Barbara Hall",
                "Spiritual growth is not like fast food. It is more like a balanced diet; it requires some effort and preparation. - Ron W. Rathbun",
                "Spiritual growth is not about climbing mountains or crossing oceans; it is about small, baby steps that lead us to the top of our dreams. - Amy Vetter"
            ]
        default:
            self.quotes = []
                
        }
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            backgroundColor
                .ignoresSafeArea()
            
            
            VStack {
            
                ProgressView(value: Double(currentQuoteIndex + 1),total:Double(quotes.count))
                    .progressViewStyle(LinearProgressViewStyle())
                    .padding()
                  
               Spacer()
                
                Text(quotes[currentQuoteIndex])
                    .font(.title)
                    .padding()
                    .onTapGesture {
                        // Display next quote when tapped
                        if currentQuoteIndex < quotes.count - 1 {
                            currentQuoteIndex += 1
                        } else {
                            currentQuoteIndex = 0 // Restart from the beginning
                        }
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
            }
            .navigationBarTitle(category)
            .offset(y: -80)
            .background(Color.white.opacity(0.5))
        }
        
    }
}
