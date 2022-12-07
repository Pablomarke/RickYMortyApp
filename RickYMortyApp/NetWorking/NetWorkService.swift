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
        
        let url = "\(cbaseUrl)character/\(id)"
        
        AF.request(url, method: .get).validate(statusCode: cstatusOk).responseDecodable(of: Character.self,
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
    //    func getAllCharacters(){
    //
    //        let urlAll = "\(cbaseUrl)character/"
    //
    //        AF.request(urlAll, method: .get).validate(statusCode: cstatusOk).responseDecodable(of: UserResponse.self) { response in
    //
    //            if let characters = response {
    //                print("ok?")
    //            } else {
    //                print(response.error?.responseCode ?? "No error")
    //            }
    //        }
    //    }
}
