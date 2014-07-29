//
//  Spaceship.swift
//  SwiftSpaceAdventure
//
//  Created by Andrew Leavitt on 7/28/14.
//  Copyright (c) 2014 Andy. All rights reserved.
//

import SpriteKit

class Spaceship: SKSpriteNode {
    
    init() {
        return super.init(texture: SKTexture(imageNamed: "Spaceship"),
                   color: SKColor.redColor(),
                   size: CGSize(width: 50, height: 50))
    }
    
}
