//
//  Zombie.swift
//  MonsterTown
//
//  Created by Liu Jingkai on 2017/6/24.
//  Copyright © 2017年 Guadoo. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brais..."
    }
    
    var walkWithlimp = true
    private(set) var isFallingApart = false
    
    final override func terrorizeTown() {
        
        if let population = town?.population {
            if !isFallingApart {
                switch population {
                case 10...:
                    town?.changePopulation(by: -10)
                default:
                    town?.population = 0
                }
            }
        }
        super.terrorizeTown()
    }
}
