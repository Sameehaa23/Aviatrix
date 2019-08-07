//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    let data = AviatrixData()
    var running = false
    var author = " "
    var currentLocation = "St. Louis"
    var location = " "

    init(authorName : String) {
        author = authorName
    }
    
    func start() -> Bool {
        running = true
        return running
        
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        location = destination
    }
    
    func distanceTo(target : String, current : String) -> Double {
        return Double(data.knownDistances[current]![target]!)
    }
    
    func knownDestinations() -> [String] {
       return Array(data.knownDistances.keys)
}
}
