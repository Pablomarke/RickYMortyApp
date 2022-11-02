//
//  Episode.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 31/10/22.
//

import Foundation

// MARK: - Episode
struct Episode: Decodable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
    
    init(id: Int, name: String, airDate: String, episode: String, characters: [String], url: String, created: String){
        self.id = id
        self.name = name
        self.airDate = airDate
        self.episode = episode
        self.characters = characters
        self.url = url
        self.created = created
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case airDate = "air_date"
        case episode
        case characters
        case url
        case created
    }
}
