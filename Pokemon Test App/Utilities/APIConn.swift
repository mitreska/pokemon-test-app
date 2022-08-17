//
//  APIConn.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 15/08/22.
//

import Foundation
import Alamofire
import Combine

final class APIConn {
    
    private let baseURL = "https://pokeapi.co/api/v2/pokemon"
    private var task: Cancellable? = nil
    
    init () {
    }
    
    func getListPokemons() -> DataResponsePublisher<APIMainResult> {
        return AF
            .request(self.baseURL, method: .get)
            .validate(statusCode: 200..<400)
            .publishDecodable(type: APIMainResult.self)
    }
    
    func getPokemon(pokemonURL: String?) -> DataResponsePublisher<Pokemon> {
        let url = pokemonURL ?? self.baseURL
        
        return AF
            .request(url, method: .get)
            .validate(statusCode: 200..<400)
            .publishDecodable(type: Pokemon.self)
    }
}
