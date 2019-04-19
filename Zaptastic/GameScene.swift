//
//  GameScene.swift
//  Zaptastic
//
//  Created by Deirdre Saoirse Moen on 4/16/19.
//  Copyright © 2019 Deirdre Saoirse Moen. All rights reserved.
//

import SpriteKit

enum CollisionType: UInt32 {
	case player = 1
	case playerWeapon = 2
	case enemy = 4
	case enemyWeapon = 8
}

class GameScene: SKScene {
    
	let player = SKSpriteNode(imageNamed: "player")
	let waves = Bundle.main.decode([Wave].self, from: "waves.json")
	let enemytypes = Bundle.main.decode([EnemyType].self, from: "enemy-types.json")

    override func didMove(to view: SKView) {
		if let particles = SKEmitterNode(fileNamed: "Starfield") {
			particles.position = CGPoint(x: 1000, y: 0)
			particles.advanceSimulationTime(20)
			particles.zPosition = -1
			addChild(particles)
		}
		
		player.position.x = frame.minX + 75
		player.zPosition = 1
		
		addChild(player)
		
		player.physicsBody = SKPhysicsBody(texture: player.texture!, size: player.texture!.size())
		
		player.physicsBody?.categoryBitMask = CollisionType.player.rawValue
		player.physicsBody?.collisionBitMask = CollisionType.enemy.rawValue | CollisionType.enemyWeapon.rawValue
		player.physicsBody?.contactTestBitMask = CollisionType.enemy.rawValue | CollisionType.enemyWeapon.rawValue
		player.physicsBody?.isDynamic = false
		
    }
}
