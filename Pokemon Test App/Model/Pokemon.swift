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
    // 6 infos:
    // - abilities: slot1, slot2, slot3
    // - stats : hp, attack, defense
    // - type : slot1, slot2
    
    init(name: String, imageName: String, pokemonURL: String) {
        self.name = name
        self.imageName = imageName
        self.pokemonURL = pokemonURL
    }
}
