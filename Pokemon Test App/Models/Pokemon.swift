//
//  Pokemon.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import Foundation

class Pokemon: Identifiable, Codable {
    var name: String?
    var imageName: String?
    var url: String?
    
    let abilities: [Ability]?
    let stats: [Stat]?
    let pokemonType: [TypeElement]?
    let pokemonID: Int?
    
    init(name: String, imageName: String, url: String) {
        self.name = name
        self.imageName = imageName
        self.url = url
        
        self.abilities = []
        self.stats = []
        self.pokemonType = []
        
        self.pokemonID = nil
    }
    
    init(with pokemon: Pokemon) {
        self.name = pokemon.name
        self.imageName = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(pokemon.pokemonID ?? 1).png"
        self.url = pokemon.url
        
        self.abilities = pokemon.abilities
        self.stats = pokemon.stats
        self.pokemonType = pokemon.pokemonType
        
        self.pokemonID = pokemon.pokemonID
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageName
        case url
        case abilities
        case stats
        case pokemonType = "types"
        case pokemonID = "id"
    }
}
