//
//  Result.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 15/08/22.
//

import Foundation

struct APIMainResult: Codable {
    let count: Int
    let next: String?
    let previous: String?
    var results: [Pokemon]
}
