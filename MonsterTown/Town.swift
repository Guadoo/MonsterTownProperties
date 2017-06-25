//
//  Town.swift
//  MonsterTown
//
//  Created by Liu Jingkai on 2017/6/24.
//  Copyright © 2017年 Guadoo. All rights reserved.
//

import Foundation

struct Town {
    static let region = "South"
    let mayor = Mayor()
    
    var population = 5_422 {
        /*
        willSet(newPopulation) {
            if newPopulation < population {
                print("The population will be changed to \(newPopulation) from \(population).")
                mayor.mayorSaid()
            }
        }
        */
        didSet(oldPopulation) {
            if oldPopulation > population {
                print("The population has changed to \(population) from \(oldPopulation).")
                mayor.mayorSaid()
            }
        }
    }
    
    var numberOfStoplights = 4
    
    enum Size {
        case small
        case medium
        case large
    }
    
//    lazy var townSize: Size = {
//        switch self.population {
//        case 0...10_000:
//            return Size.small
//        case 10_001...100_000:
//            return Size.medium
//        default:
//            return Size.large
//        }
//    }()
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }
        }
    }
    
    
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}

