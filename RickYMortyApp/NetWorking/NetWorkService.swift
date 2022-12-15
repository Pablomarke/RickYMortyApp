//
//  NetWorkService.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 31/10/22.
//

import Foundation
import Alamofire

final class NetWorkService {
    
    static let shared = NetWorkService()
    
    private let cbaseUrl = "https://rickandmortyapi.com/api/"
    private let cstatusOk = 200...299
    
    func getCharacterById(id: Int,
                          success: @escaping(_ character: Character) -> (),
                          failure: @escaping (_ error: Error?) -> ()) {
        
        let idUrl = "\(cbaseUrl)character/\(id)"
        
        AF.request(idUrl, method: .get).validate(statusCode: cstatusOk).responseDecodable(of: Character.self,decoder : DataDecoder()) {
            response in
            
            if let character = response.value {
                success(character)
            } else {
                failure(response.error)
            }
        }
    }
    
    
    func getAllCharacters(onSucces success: @escaping ([Character]) -> Void,
                          failure: @escaping (Error) -> Void ){
        
        let fullCharactersUrl = "\(cbaseUrl)character/"
        
        AF.request(fullCharactersUrl, method: .get).validate(statusCode: cstatusOk).responseDecodable(of: RickYMortyResponse.self,
                                                                                                      decoder: DataDecoder()) {
            response in
            
            if let response = response.value {
                success(response.results)
            } else {
                failure(response.error!)
            }
        }
    }
    
    func getCharacterName(name: String, success: @escaping(_ character: CharactersCollection) ->(), failure: @escaping (_ error: Error?) -> ()) {
        
        let nameUrl = "\(cbaseUrl)character/?name=\(name)"
        
        AF.request(nameUrl, method: .get).validate(statusCode: cstatusOk).responseDecodable(of: CharactersCollection.self, decoder: DataDecoder()) {
            response in
            
            if let characters = response.value {
                success(characters)
            } else {
                failure(response.error)
            }
        }
    }
}
