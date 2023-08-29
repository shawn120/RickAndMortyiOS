//
//  RMService.swift
//  RickAndMorty
//
//  Created by Shawn on 8/29/23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func excute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
