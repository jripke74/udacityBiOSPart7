//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var badgeRequestType = [UDRequestType]()
        for requestType in requestTypes {
            badgeRequestType.append(requestType)
        }
        var badgeTypesWeHave = [UDRequestType]()
        for badge in badges {
            badgeTypesWeHave.append(badge.requestType)
        }
        var hasBadge = false
        for badgeType in badgeRequestType {
            for badge in badgeTypesWeHave {
                if badge == badgeType {
                    hasBadge = true
                } else {
                    hasBadge = false
                    return hasBadge
                }
            }
        }
        return hasBadge
    }
    
}
