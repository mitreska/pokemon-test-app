//
//  Pokemon.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import Foundation

class Pokemon: Identifiable {
    var name: String?
    var imageName: String?
    var pokemonURL: String
    
    let abilities: [Ability]
    let stats: [Stat]
    let pokemonType: [TypeElement]
    
    init(name: String, imageName: String, pokemonURL: String) {
        self.name = name
        self.imageName = imageName
        self.pokemonURL = pokemonURL
        
        self.abilities = []
        self.stats = []
        self.pokemonType = []
    }
}
