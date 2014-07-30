//
//  GameScene.swift
//  SwiftSpaceAdventure
//
//  Created by Andrew Leavitt on 7/28/14.
//  Copyright (c) 2014 Andy. All rights reserved.
//

import SpriteKit
import GameController

class GameScene: SKScene {
    
    var contentCreated: Bool = false
    override func didMoveToView(view: SKView) {
        
        if(self.contentCreated == false) {
            self.createSceneContents()
        }
        
        var controller  = GCController.controllers()
        if controller.count > 0 {
            NSLog("friggin miracle")
        } else {
            NSLog("no dice")
        }
    }
    
    func createSceneContents() -> Void {
        var spaceship = Spaceship()
        self.addChild(spaceship as SKSpriteNode)
        spaceship.setStartingPosition();
        self.addChild(StarField() as SKNode)
        self.contentCreated = true
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
