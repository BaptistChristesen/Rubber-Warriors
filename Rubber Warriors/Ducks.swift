//
//  DuckGrid.swift
//  Rubber Warriors
//
//  Created by Josh Madison on 3/6/24.
//

import Foundation

@Observable class Duck: Identifiable {
    var image: String
    var health: Int
    var damage: Int
    
    init(image: String, health: Int, damage: Int) {
        self.image = image
        self.health = health
        self.damage = damage
    }
}
