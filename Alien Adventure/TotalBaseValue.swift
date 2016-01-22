//
//  TotalBaseValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func totalBaseValue(inventory: [UDItem]) -> Int {
        let totalBaseValue = inventory.reduce(0) { (var value: Int, item: UDItem) -> Int in value += item.baseValue
            return value }
        return totalBaseValue
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the Under the Hood
// folder, and making the following change in Settings.swift: static var RequestsToSkip = 7