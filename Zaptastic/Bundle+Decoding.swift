//
//  Bundle+Decoding.swift
//  Zaptastic
//
//  Created by Deirdre Saoirse Moen on 4/16/19.
//  Copyright © 2019 Deirdre Saoirse Moen. All rights reserved.
//

import Foundation

extension Bundle {
	func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
		guard let url = self.url(forResource: file, withExtension: nil) else {
			fatalError("Could not locate \(file) in bundle.")
		}
		
		guard let data = try? Data(contentsOf: url) else {
			fatalError("Could not load file \(file) from bundle.")
		}
		
		let decoder = JSONDecoder()
		
		guard let loaded = try? decoder.decode(T.self, from: data) else {
			fatalError("Failed to load data from file \(file) from bundle.")
		}
		
		return loaded
	}
}
