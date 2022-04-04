//
//  Webservice.swift
//  goatsexample
//
//  Created by Kevin W Evans on 04/04/2022.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case invalidRequest
}

class Webservice {
    func getAllGoats(url: URL) async throws -> [Goat] {
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.invalidRequest
        }
        
        let goats = try? JSONDecoder().decode([Goat].self, from: data)
        return goats ?? []
    }
}
