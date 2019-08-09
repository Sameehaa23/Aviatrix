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
    var distanceTraveled = 0.0
    var fuelLevel = 5000
    var maxFuel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0

    init(authorName : String) {
        author = authorName
    }
    
    func start() -> Bool {
        running = true
        return running
        
    }
    
    func refuel() {
        fuelCost = (5000.0 - Double(fuelLevel)) * data.fuelPrices[currentLocation]!
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target: destination, current: currentLocation)
        let fuelUsed = Double(distanceTraveled)/milesPerGallon
        fuelLevel -= Int(fuelUsed)
        currentLocation = destination
    }
    
    func distanceTo(target : String, current : String) -> Double {
        distanceTraveled = Double(data.knownDistances[current]![target]!)
        return distanceTraveled
    }
    
    func knownDestinations() -> [String] {
       return Array(data.knownDistances.keys)
}
}
