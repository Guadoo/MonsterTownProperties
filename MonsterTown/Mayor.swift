//
//  Mayor.swift
//  MonsterTown
//
//  Created by Liu Jingkai on 2017/6/25.
//  Copyright © 2017年 Guadoo. All rights reserved.
//

import Foundation

struct Mayor {
    let mayorStatement = "I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence"
    
    func mayorSaid(){
        print(mayorStatement)
    }
    
    private var anxietyLevel: Int = 100
}
