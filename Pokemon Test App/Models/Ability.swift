//
//  Ability.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 15/08/22.
//

import Foundation

class Ability: Codable, Identifiable {
    let ability: Species
    let isHidden: Bool?
    let slot: Int
    
    init(with ability: Ability){
        self.ability = ability.ability
        self.isHidden = ability.isHidden
        self.slot = ability.slot
    }
    
    enum CodingKeys: String, CodingKey {
        case ability
        case isHidden = "is_hidden"
        case slot
    }
}
