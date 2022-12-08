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
    let next: String
    let results: [Character]?
    
    init(count: Int, pages: Int, next: String, results: [Character]?) {
        
        self.count = count
        self.pages = pages
        self.next = next
        self.results = results
        
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
