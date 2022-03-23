//
//  Goat.swift
//  goats
//
//  Created by Kevin W Evans on 23/03/2022.
//

import SwiftUI


struct Goat: Decodable, Identifiable, Hashable {
    var id = UUID()
    let name, image, otherNames, origin: String
    let purpose, references: String
    var liked: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case image = "Image"
        case otherNames = "Other names"
        case origin = "Origin"
        case purpose = "Purpose"
        case references = "References"
    }
}
