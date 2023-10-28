//
//  Answer.swift
//  Trivia
//
//  Created by Albert Khurshudyan on 28.10.23.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
