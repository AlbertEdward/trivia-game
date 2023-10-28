//
//  TriviaView.swift
//  Trivia
//
//  Created by Albert Khurshudyan on 28.10.23.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Image("triviaLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                
                Text("Поздравеления, играта приключи! 🥳")
                    .foregroundColor(.white)
                    .bold()
                    .italic()
                
                Text("Резултат \(triviaManager.score) от \(triviaManager.length)! 🥳")
                    .foregroundColor(.white)
                    .bold()
                    .italic()
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Играй отново")
                }
            }
            .foregroundColor(Color("customPink"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("customPurple"))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
