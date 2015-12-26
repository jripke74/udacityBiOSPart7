//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let dataFileURL = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")
        let planetListJson = NSData(contentsOfURL: dataFileURL!)
        var mostPoints = 0;
        var planetWithMostPoints = ""
        var planetNumber = 0
        
        var planetDictionariesFromJSON: NSArray!
        do {
            planetDictionariesFromJSON = try! NSJSONSerialization.JSONObjectWithData(planetListJson!, options: NSJSONReadingOptions()) as! NSArray
        }
        
        for planet in planetDictionariesFromJSON {
            ++planetNumber
            var totalPoints = 0;
            if let commoneItemsDetected = planet.objectForKey("CommonItemsDetected") as? Int {
                totalPoints += commoneItemsDetected
            }
            if let uncommonItemsDetected = planet.objectForKey("UncommonItemsDetected") as? Int {
                totalPoints = (2 * uncommonItemsDetected) + totalPoints
            }
            if let rareItemsDetected = planet.objectForKey("RareItemsDetected") as? Int {
                totalPoints = (3 * rareItemsDetected) + totalPoints
            }
            if let legendaryItemsDetected = planet.objectForKey("LegendaryItemsDetected") as? Int {
                totalPoints = (4 * legendaryItemsDetected) + totalPoints
            }
            if totalPoints > mostPoints {
                mostPoints = totalPoints
                if let planetName = planet.objectForKey("Name") as? String {
                    planetWithMostPoints = planetName
                }
            }
        }
        return planetWithMostPoints
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"