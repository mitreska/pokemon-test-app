//
//  ContentViewModel.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 15/08/22.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    let apiConnection = APIConn()
    private var task: Cancellable? = nil
    
    @Published var pokemonList: [Pokemon] = []
    
    func getPokemons() {
        self.task = apiConnection.getListPokemons()
            .sink(receiveCompletion: { (completion) in
                switch completion {
                case .finished:
                    ()
                case .failure(let error):
                    print("ERROR: ", error.localizedDescription)
                }
            }, receiveValue: { [weak self] (response) in
                switch response.result {
                case .success(let result):
                    print("SUCCESS: ", result)
                    self?.pokemonList = result.results.map { Pokemon(with: $0)}
                case .failure(let error):
                    print(error.localizedDescription)
                
                }
            })
    }
}
