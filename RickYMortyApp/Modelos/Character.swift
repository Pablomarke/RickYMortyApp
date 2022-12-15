//
//  Character.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 31/10/22.
//

import Foundation

// MARK: - Character

struct Character: Decodable {
    
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
}

extension Character: CharacterDetailProvidable {
    var nameDetailed: String? {
        return name
    }
    
    var statusDetailed: String? {
        return status
    }
    
    var speciesDetailed: String? {
        return species
    }
    
    var typeDetailed: String? {
        return type
    }
    
    var genderDetailed: String? {
        return gender
    }
}

extension Character: TableProvidable {
    var trueID: Int {
        return id
    }
    
    var trueName: String {
        return name
    }
    
    var trueImage: String? {
        return image
    }
}
