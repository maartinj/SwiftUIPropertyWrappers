//
//  User.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Marcin Jędrzejak on 18/11/2022.
//

import SwiftUI

class User: ObservableObject {
    @AppStorage("lastNumber") var lastNumber: Int = 3
    internal init(name: String, luckyNumber: Int) {
        self.name = name
        self.luckyNumber = lastNumber
    }
    
    var name: String
    @Published var luckyNumber: Int = 0 {
        didSet {
            lastNumber = luckyNumber
        }
    }
}
