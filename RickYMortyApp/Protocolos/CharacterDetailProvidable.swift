//
//  CharacterDetailProvidable.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 7/12/22.
//

import Foundation

protocol CharacterDetailProvidable {
    
    var nameDetailed: String? { get }
    var statusDetailed: String? { get }
    var speciesDetailed: String? { get }
    var typeDetailed: String? { get }
    var genderDetailed: String? { get }
    
}
