//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Shawn on 8/29/23.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // ('Alive', 'Dead' or 'unknown')
    case alive = "Alive"
    case `dead` = "Dead"
    case `unknown` = "unknown"
}
