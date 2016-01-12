//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var currentLongestName = ""
        var longestNameLength = 0
        for item in inventory {
            let currentNameLength = item.name.characters.count
            if currentNameLength >= longestNameLength {
                longestNameLength = currentNameLength
                currentLongestName = item.name
            }
        }
        let reverseName = String(currentLongestName.characters.reverse())
        return reverseName
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"