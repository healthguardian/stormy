//
//  Coordinate.swift
//  Stormy
//
//  Created by Maxence Roy on 9/27/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

struct Coordinate {
    let latitude: Double
    let longitude: Double
}

extension Coordinate: CustomStringConvertible {
    var description: String {
        return "\(latitude),\(longitude)"
    }
    
    static var medellin: Coordinate {
        return Coordinate(latitude: 6.2002, longitude: -75.5730)
    }
    
    static var alcatrazIsland: Coordinate {
        return Coordinate(latitude: 37.8267, longitude: -122.4233)
    }
}
