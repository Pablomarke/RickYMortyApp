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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        status = try container.decode(String.self, forKey: .status)
        species = try container.decode(String.self, forKey: .species)
        type = try container.decode(String.self, forKey: .type)
        gender = try container.decode(String.self, forKey: .gender)
        image = try container.decode(String.self, forKey: .image)
        episode = try container.decode([String].self, forKey: .episode)
        url = try container.decode(String.self, forKey: .url)
        created = try container.decode(String.self, forKey: .created)
        
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
