//
//  GoatsViewModel.swift
//  goats
//
//  Created by Kevin W Evans on 23/03/2022.
//

import Foundation

class GoatsViewModel: ObservableObject {
    static let allGoats: [Goat] = Bundle.main.decode("goats.json")
    
    @Published var goatData: [Goat] = allGoats
    
    
}
