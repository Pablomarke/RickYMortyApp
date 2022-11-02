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
   
    func getCharacter(id: Int){
        
        let url = "\(cbaseUrl)character/\(id)"
        
        AF.request(url, method: .get).validate(statusCode: cstatusOk).responseDecodable(of: Character.self) { response in
            
            if let character = response.value?.name {
                print(Character.self.CodingKeys.name)
            } else {
                print(response.error?.responseCode ?? "No error")
            }
        }
        
    }
}
