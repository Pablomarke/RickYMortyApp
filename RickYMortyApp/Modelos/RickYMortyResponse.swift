//
//  ApiResponse.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 14/12/22.
//

import Foundation

struct RickYMortyResponse: Decodable {
    
    let infoContainer: InfoContainer
    let results: [Character]
    
    enum CodingKeys: String, CodingKey {
        case infoContainer = "info"
        case results
        
    }
}

struct InfoContainer: Decodable {
    
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
