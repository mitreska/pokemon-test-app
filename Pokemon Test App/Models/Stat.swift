//
//  Stat.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 15/08/22.
//

import Foundation

class Stat: Codable, Identifiable {
    let baseStat: Int
    var stat: Species
    
    init(with stat: Stat) {
        self.baseStat = stat.baseStat
        self.stat = stat.stat
    }
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case stat
    }
}
