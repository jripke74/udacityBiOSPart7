//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {
    override init(requestType: UDRequestType) {
        super.init(requestType: requestType)
        self.texture = SKTexture(imageNamed: "BadgeTeal")
        SKSpriteNode.init(texture: texture, color: UIColor.clearColor(), size: CGSizeMake(48, 48))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum BadgeAnimation: Int {
        case GrowAndShrink = 0
        case Rotate = 1
        case Shake = 2
    }
}