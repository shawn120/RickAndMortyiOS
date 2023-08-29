//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Shawn on 8/29/23.
//

import Foundation


/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case charater // "character"
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
