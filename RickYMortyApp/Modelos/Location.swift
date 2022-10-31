//
//  Location.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 31/10/22.
//

import Foundation

// MARK: - Location
struct Location: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
    
    init(id: Int, name: String, type: String, dimension: String, residents: [String], url: String, created: String) {
        self.id = id
        self.name = name
        self.type = type
        self.dimension = dimension
        self.residents = residents
        self.url = url
        self.created = created
    }
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case type
        case dimension
        case residents
        case url
        case created
        
    }
    
}
