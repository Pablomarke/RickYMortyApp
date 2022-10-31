//
//  Character.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 31/10/22.
//

import Foundation

// MARK: - Character
struct Character: Codable {
    let id: Int
    let name, status, species, type: String
    let gender: String
    let origin, location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}


