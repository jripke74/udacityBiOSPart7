//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var badgeRequestTypes = [UDRequestType]()
        for requestType in requestTypes {
            badgeRequestTypes.append(requestType)
        }
        var hasBadge = false
        for rt in requestTypes {
            if badgeRequestTypes.contains(rt) {
                hasBadge = true
            } else {
                hasBadge = false
            }
        }
        return hasBadge
    }
    
}
