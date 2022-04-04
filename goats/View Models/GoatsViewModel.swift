//
//  GoatsViewModel.swift
//  goats
//
//  Created by Kevin W Evans on 23/03/2022.
//

import Foundation

class GoatsViewModel: ObservableObject {
    
    @Published var goatData: [Goat] = []
    
    func populateGoats() async {
        do {
            guard let url = URL(string: "http://localhost:3000/goats") else {
                throw NetworkError.badUrl
            }
            
            let goats = try await Webservice().getAllGoats(url: url)
            
            DispatchQueue.main.async {
                self.goatData = goats.map(GoatViewModel.init)
            }
        } catch {
            print(error)
        }
    }
}

struct GoatViewModel: Identifiable {
    
    private let goat: Goat
    
    init(goat: Goat){
        self.goat = goat
    }
    
    var id: UUID {
        goat.id
    }
    
    var name: String {
        goat.name
    }
    
    var image: String {
        goat.image
    }
    
    var otherNames: String {
        goat.otherNames
    }
    
    var origin: String {
        goat.origin
    }
    
    var purpose: String {
        goat.purpose
    }
    
    var references: String {
        goat.references
    }
    
    var liked: Bool {
        goat.liked
    }
    
}
