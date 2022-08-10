//
//  PokemonDetailViewModel.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import Foundation

class PokemonDetailViewModel: ObservableObject {
    @Published var pokemonToShow = ""
    @Published var pokemon: Pokemon?
    
    init() {
    }
    
    init(pokemonToShow: String) {
        self.pokemonToShow = pokemonToShow
        // call API for result
    }
}
