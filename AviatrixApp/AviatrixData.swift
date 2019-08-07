//
//  AviatrixData.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation


class AviatrixData {
    
    var fuelPrices = [
        "St. Louis" : 1.79,
        "Phoenix" : 1.84,
        "Denver" : 1.65,
        "SLC" : 1.95
    ]
    
    var knownDistances = [
        "St. Louis" : [
            "St. Louis" : 0.0,
            "Phoenix" : 1260.0,
            "Denver" : 768.0,
            "SLC" : 1150.0
        ],
        "Phoenix" : [
            "St. Louis" : 1260.0,
            "Phoenix" : 0.0,
            "Denver" : 601.0,
            "SLC" : 508.0
        ],
        "Denver" : [
            "St. Louis" : 768.0,
            "Phoenix" : 601.0,
            "Denver" : 0.0,
            "SLC" : 390.0
        ],
        "SLC" : [
            "St. Louis" : 1150.0,
            "Phoenix" : 508.0,
            "Denver" : 390.0,
            "SLC" : 0.0
        ]
    ]
    
}

