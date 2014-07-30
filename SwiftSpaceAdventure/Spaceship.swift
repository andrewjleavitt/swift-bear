//
//  Spaceship.swift
//  SwiftSpaceAdventure
//
//  Created by Andrew Leavitt on 7/28/14.
//  Copyright (c) 2014 Andy. All rights reserved.
//

import SpriteKit

class Spaceship: SKSpriteNode {
    
    var fireAction: Bool = false
    var secondFireAction: Bool = false
    var vector: CGPoint = CGPoint()
    
    let spaceshipTexture: SKTexture = SKTexture(imageNamed: "Spaceship")
    
    init() {
        super.init(texture: spaceshipTexture,
                   color: SKColor(),
                   size: CGSize(width: 50, height: 50))
        
        self.name = "hull"

    }
    
    func setStartingPosition() {
        self.position = CGPointMake(CGRectGetMidX(self.scene.frame), CGRectGetMinY(self.scene.frame)+100)
    }
    
}
