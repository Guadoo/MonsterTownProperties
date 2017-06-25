//
//  main.swift
//  MonsterTown
//
//  Created by Liu Jingkai on 2017/6/24.
//  Copyright © 2017年 Guadoo. All rights reserved.
//

import Foundation

var myTown = Town()
//var myTownSize = myTown.townSize
print(myTown.townSize, myTown)

myTown.changePopulation(by: 1_000_000)
var myTownSize = myTown.townSize
print("Size: \(myTown.townSize); population: \(myTown.population)")

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
//fredTheZombie.isFallingApart = true

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

























