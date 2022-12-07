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
    
    init(id:Int, name: String, status: String, species: String, type: String, gender: String,  image: String, episode: [String], url: String, created: String){
        
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.gender = gender
        self.image = image
        self.episode = episode
        self.url = url
        self.created = created
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case status
        case species
        case type
        case gender
        case image
        case episode
        case url
        case created
    }
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
