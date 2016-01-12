//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        var errorDictionary:[UDPolicingError : Int] = [:]
        
        if inventory.isEmpty {
            return errorDictionary
        }
        
        var nameContainsLaserCount = 0
        var valueLessThanTenCount = 0
        var itemFromCuniaCount = 0
        
        for item in inventory {
            if item.name.containsString("laser") {
                nameContainsLaserCount += 1
                errorDictionary[.NameContainsLaser] = nameContainsLaserCount
            } else if item.baseValue < 10 {
                valueLessThanTenCount += 1
                errorDictionary[.ValueLessThan10] = valueLessThanTenCount
            } else if let _ = item.inscription?.containsString("Cunia") {
                itemFromCuniaCount += 1
                errorDictionary[.ItemFromCunia] = itemFromCuniaCount
            }
        }
        
        
        return errorDictionary
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"