//
//  ContentView.swift
//  Trivia
//
//  Created by Albert Khurshudyan on 28.10.23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing:20) {
                    Image("triviaLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                    
                    Text("Искаш да тестваш своите знания?")
                                        .foregroundColor(Color("customPink"))
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .italic()
                                        .multilineTextAlignment(.center)
                                        .padding()
                }
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "ЗАПОЧНИ")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        .background(.white)
        }
        
    }
}

#Preview {
    ContentView()
}
