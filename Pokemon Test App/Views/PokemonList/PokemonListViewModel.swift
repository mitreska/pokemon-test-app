//
//  PokemonListViewModel.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import Foundation

class PokemonListViewModel: ObservableObject {
    @Published var pokemonList: [Pokemon] = []
    
    init() {
    }
    
    func setPokemonList(pokemonList: [Pokemon]?){
        if let pokemonList = pokemonList {
            self.pokemonList = pokemonList
        } else {
            self.pokemonList = []
        }
    }
}
