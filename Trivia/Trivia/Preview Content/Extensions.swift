//
//  Еьтенсионс.swift
//  Trivia
//
//  Created by Albert Khurshudyan on 28.10.23.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundStyle(Color("customPink"))
    }
}
