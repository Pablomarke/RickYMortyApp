//
//  AllCharactersProvidable.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 8/12/22.
//

import Foundation

protocol AllCharactersProvidable {
    
    var allCharacters: Int? { get }
    var numberPages: Int? { get }
    var oneToOneCharacters: [Character]? { get }
}
