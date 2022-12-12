//
//  CharactersCollection.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 8/12/22.
//

import Foundation

struct CharactersCollection: Decodable {
    let count: Int
    let pages: Int
    
    let results: [Character]?
    
    init(count: Int, pages: Int, results: [Character]?) {
        
        self.count = count
        self.pages = pages
        self.results = results
        
    }


enum CodingKeys: CodingKey {
    case count
    case pages
    case results
}

    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        count = try container.decode(Int.self, forKey: .count)
        pages = try container.decode(Int.self, forKey: .pages)

        
        let infoContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .results)
        
        results = try infoContainer.decode([Character].self, forKey: .results)
    }
}

extension CharactersCollection: AllCharactersProvidable {
    var allCharacters: Int? {
        return count
    }
    
    var numberPages: Int? {
        return pages
    }
    
    var oneToOneCharacters: [Character]? {
        return results
    }
}
