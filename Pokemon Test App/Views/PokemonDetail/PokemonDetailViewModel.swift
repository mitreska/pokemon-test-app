//
//  PokemonDetailViewModel.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import Foundation
import Combine
import SwiftUI

class PokemonDetailViewModel: ObservableObject {
    @Published var pokemon: Pokemon?
    
    @Published var pokemonAbilities: String = ""
    
    let apiConnection = APIConn()
    private var task: Cancellable? = nil
    
    init() {
    }
    
    init(pokemonToShow: String) {
        getPokemon(pokemonURL: pokemonToShow)
    }
    
    func getPokemon(pokemonURL: String) {
        self.task = apiConnection.getPokemon(pokemonURL: pokemonURL)
            .sink(receiveCompletion: { (completion) in
                switch completion {
                case .finished:
                    ()
                case .failure(let error):
                    print("ERROR: ", error.localizedDescription)
                }
            }, receiveValue: { [weak self] (response) in
                print("RESULT: ", response)
                switch response.result {
                case .success(let result):
                    print("SUCCESS: ", result)
                    self?.pokemon = Pokemon(with: result)
                    self?.preparePokemonAbilities()
                case .failure(let error):
                    print("ERROR: ", error.localizedDescription)
                
                }
            })
    }
    
    func preparePokemonAbilities() {
        if let pokemon = self.pokemon {
            if let types = pokemon.pokemonType {
                types.forEach { type in
                    if self.pokemonAbilities.isEmpty {
                        self.pokemonAbilities = type.type.name
                    } else {
                        self.pokemonAbilities +=  " - \(type.type.name)"
                    }
                }
            } else {
                print("ERROR: NO TYPE FOUND!")
            }
        }
    }
}
