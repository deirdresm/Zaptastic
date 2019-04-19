//
//  EnemyNode.swift
//  Zaptastic
//
//  Created by Deirdre Saoirse Moen on 4/16/19.
//  Copyright © 2019 Deirdre Saoirse Moen. All rights reserved.
//

import SpriteKit

class EnemyNode: SKSpriteNode {
	var type: EnemyType
	var lastFireTime: Double = 0
	var shields: Int
	
	init(type: EnemyType, startPosition: CGPoint, xOffset: CGFloat, moveStraight: Bool) {
		self.type = type
		self.shields = type.shields
		
		let texture = SKTexture(imageNamed: type.name)
		super.init(texture: texture, color: .white, size: texture.size())
		
		physicsBody = SKPhysicsBody(texture: texture, size: texture.size())
		physicsBody?.categoryBitMask = CollisionType.enemy.rawValue
		physicsBody?.collisionBitMask = CollisionType.player.rawValue | CollisionType.playerWeapon.rawValue
		physicsBody?.contactTestBitMask = CollisionType.player.rawValue | CollisionType.playerWeapon.rawValue
		name = "enemy"
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("This method is not implemented.")
	}
}
