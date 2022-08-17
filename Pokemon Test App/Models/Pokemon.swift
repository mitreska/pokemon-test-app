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
    
    init(name: String, imageName: String, url: String) {
        self.name = name
        self.imageName = imageName
        self.url = url
        
        self.abilities = []
        self.stats = []
        self.pokemonType = []
    }
    
    init(with pokemon: Pokemon) {
        self.name = pokemon.name
        self.imageName = ""
        self.url = pokemon.url
        
        self.abilities = pokemon.abilities
        self.stats = pokemon.stats
        self.pokemonType = pokemon.pokemonType
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageName = "location_area_encounters" // not really usefull here!
        case url
        case abilities
        case stats
        case pokemonType = "types"
    }
}
