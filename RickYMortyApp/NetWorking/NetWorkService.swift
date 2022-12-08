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
    
    func getCharacter(id: Int, success: @escaping(_ character: Character) -> (),
                      failure: @escaping (_ error: Error?) -> ()) {
        
        let singleUrl = "\(cbaseUrl)character/\(id)"
        
        AF.request(singleUrl, method: .get).validate(statusCode: cstatusOk).responseDecodable(of: Character.self,
                                                                                        decoder: DataDecoder()) {
            response in
            
            if let character = response.value {
                success(character)
            } else {
                failure(response.error)
            }
        }
        
    }
    
    // #Mark: To do
    func getAllCharacters(onSucces success: @escaping (CharactersCollection) -> Void, failure: @escaping (Error) -> Void ){
    
        let fullCharactersUrl = "\(cbaseUrl)character/"
        
        AF.request(fullCharactersUrl, method: .get).validate(statusCode: cstatusOk).responseDecodable(of: CharactersCollection.self, decoder: DataDecoder()) {
            response in
            
            if let characterCollection = response.value {
                success(characterCollection)
            } else {
                failure(response.error!)
            }
        }
           
            
        }
}
