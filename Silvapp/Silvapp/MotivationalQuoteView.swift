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
                "Love yourself first and everything else falls into line. You really have to love yourself to get anything done in this world.",
                "One of the greatest regrets in life is being what others would want you to be, rather than being yourself",
                "You yourself, as much as anybody in the entire universe, deserve your love and affection.",
                "Your self-worth is determined by you. You don’t have to depend on someone telling you who you are.",
                "Find your purpose and fling your life out to it. Find a way or make one. Try with all your might. Self-made or never made",
                "The hardest challenge is to be yourself in a world where everyone is trying to make you be somebody else.",
                "I am somebody. I am me. I like being me. And I need nobody to make me somebody.",
                "The best way to gain self-confidence is to do what you are afraid to do",
                "Accepting yourself only as long as you look a certain way isn’t self love, it’s self destruction.",
                "Tell yourself how wonderful you are, how great you are. Tell yourself how much you love yourself.",
                "Healthy self love means being gentle with the soul within you. To love oneself is the purest, bravest thing. Anybody in the entire world can experience self love. Just do the simple acts of love for yourself, and then your authentic self begins.",
                "Self-love is necessary for a functional and successful life",
                "Never allow someone to be your priority while allowing yourself to be their option",
                "HOW YOU LOVE YOURSELF IS HOW YOU TEACH OTHERS TO LOVE YOU.",
                "To fall in love with yourself is the first secret to happiness",
                "You are free, you are powerful, you are good, you are love, you have value you have a purpose. All is well.",
                "Self love—it doesn't mean that everyone will treat you the way you deserve to be treated. It means that you won't let them change the way you see yourself; nor will you stick around for them to destroy you.",
                "You are good enough to make whatever you want to achieve possible. You just need to find your talent and passion, then put a heck a lot of work into it",
                "Follow your passion. Stay true to yourself. Never follow someone else’s path unless you’re in the woods and you’re lost and you see a path. By all means, you should follow that.",
                "Put yourself first. Self-love is not selfish at all. It means that you’re taking care of yourself, and like my mom reinforced to me, to make sure that I was safe and that I was healthy."
            ]
        case "Gratitude":
            self.quotes = [
                "Gratitude is the healthiest of all human emotions. The more you express gratitude for what you have, the more likely you will have even more to express gratitude for.",
                "Be thankful for what you have; you'll end up having more. If you concentrate on what you don't have, you will never, ever have enough.",
                "Gratitude can transform common days into thanksgivings, turn routine jobs into joy, and change ordinary opportunities into blessings.",
                "Appreciation is a wonderful thing. It makes what is excellent in others belong to us as well.",
                "Strive to find things to be thankful for, and just look for the good in who you are.",
                "When you arise in the morning give thanks for the food and for the joy of living. If you see no reason for giving thanks, the fault lies only in yourself.",
                "A thankful heart is not only the greatest virtue, but the parent of all the other virtues.",
                "Acknowledging the good that you already have in your life is the foundation for all abundance.",
                "Give thanks, greatful people are happy people",
                "We can always find something to be thankful for, and there may be reasons why we ought to be thankful for even those dispensations which appear dark and frowning.",
                "Live a life full of humility, gratitude, intellectual curiosity, and never stop learning.",
                "Everything we do should be a result of our gratitude for what God has done for us.",
                "Enjoy the little things, for one day you may look back and realize they were the big things.",
                "The heart that gives thanks is a happy one, for we cannot feel thankful and unhappy at the same time.",
                
                
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
