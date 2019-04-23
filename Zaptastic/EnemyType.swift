//
//  EnemyType.swift
//  Zaptastic
//
//  Created by Deirdre Saoirse Moen on 4/16/19.
//  Copyright © 2019 Deirdre Saoirse Moen. All rights reserved.
//

import SpriteKit

struct EnemyType : Codable {
	var name: String
	var shields: Int
	var speed: CGFloat
	var powerUpChance: Int
}
