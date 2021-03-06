//
//  StarField.swift
//  SwiftSpaceAdventure
//
//  Created by Andrew Leavitt on 7/29/14.
//  Copyright (c) 2014 Andy. All rights reserved.
//

import Spritekit

class StarField: SKNode {
    init() {
        super.init()
        if self != nil {
            var update :SKAction = SKAction.runBlock({[weak self] () -> Void in
                if arc4random_uniform(10) > 3 {
                    self?.launchStar()
                }
            })
            var delay : SKAction = SKAction.waitForDuration(0.01)
            var updateLoop : SKAction = SKAction.sequence([delay, update])
            self.runAction(SKAction.repeatActionForever(updateLoop))
            
        }
    }
    
    func launchStar() {
        var randX = UInt(arc4random_uniform(UInt32(UInt(self.scene.size.width))))
        var maxY = UInt(self.scene.size.height)
        var randomStart : CGPoint = CGPointMake(CGFloat(randX), CGFloat(maxY))
        var star : SKSpriteNode = SKSpriteNode(imageNamed: "shootingstar")
        star.position = randomStart
        star.size = CGSizeMake(2, 10)
        star.alpha = 0.1 + CGFloat(UInt(arc4random_uniform(10))) / 10.0
        self.addChild(star)
        var destY = 0 - self.scene.size.height - star.size.height
        var duration : CGFloat = 0.1 + CGFloat(UInt(arc4random_uniform(10))) / 10.0
        var move : SKAction = SKAction.moveByX(0, y: destY, duration: NSTimeInterval(duration))
        var remove : SKAction = SKAction.removeFromParent()
        star.runAction(SKAction.sequence([move, remove]))
    }
}