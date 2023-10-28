//
//  PrimaryButton.swift
//  Trivia
//
//  Created by Albert Khurshudyan on 28.10.23.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color("customPink")
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
        
    }
}

#Preview {
    PrimaryButton(text: "Следващ въпрос")
}
