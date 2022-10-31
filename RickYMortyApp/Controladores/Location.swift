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
}
