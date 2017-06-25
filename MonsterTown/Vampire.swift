//
//  Vampire.swift
//  MonsterTown
//
//  Created by Liu Jingkai on 2017/6/24.
//  Copyright © 2017年 Guadoo. All rights reserved.
//

import Foundation

class Vampire: Monster {
    
    var vampires = [Vampire]()
    
    override func terrorizeTown() {
        
        town?.changePopulation(by: -1)
        vampires.append(self)
        super .terrorizeTown()
    }
    
    
}
