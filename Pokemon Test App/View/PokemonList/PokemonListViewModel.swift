//
//  PokemonListViewModel.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import Foundation

class PokemonListViewModel: ObservableObject {
    @Published var pokemonList: [Pokemon] = []
    
    func setPokemonList() {
        // call for API to set values.
        
        pokemonList.append(Pokemon(name: "Bulbasaur", imageName: "bulbasaur", pokemonURL: "url_here"))
        pokemonList.append(Pokemon(name: "Pikachu", imageName: "bulbasaur", pokemonURL: "url_here"))
        pokemonList.append(Pokemon(name: "Blastoise", imageName: "bulbasaur", pokemonURL: "url_here"))
        pokemonList.append(Pokemon(name: "Ash", imageName: "bulbasaur", pokemonURL: "url_here"))
    }
}
