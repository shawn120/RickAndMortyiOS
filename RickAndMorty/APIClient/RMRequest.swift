//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Shawn on 8/29/23.
//

import Foundation


/// Object that represents a single API call
final class RMRequest {
    // request example: get a single character
        // https://rickandmortyapi.com/api/character/2
    // What we need?
    // Base url "https://rickandmortyapi.com/api/"
    // end point "character"
    // path components "2"
    // query parameters (optional)
    
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    
    /// API endpoint
    private let endpoint: RMEndpoint
    
    
    /// Path components for API, if any
    private let pathComponents: [String]
    
    
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            // The query will look like this: https://rickandmortyapi.com/api/character/?name=rick&status=alive
            // name=value&name=value&... ...
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil } // because the value in URLQueryItem is optional
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - public
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: target endpoint
    ///   - pathComponents: collection of path components
    ///   - queryParameters: collection of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
