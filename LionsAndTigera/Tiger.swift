//
//  Tiger.swift
//  LionsAndTigera
//
//  Created by Samuel Hooker on 11/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    
    
    func chuff(){
        println("The tiger can chuff, chuff")
    }
    
    func chuffANumberOfTimes(numberOfTimes: Int){
        for var chuff = 0; chuff < numberOfTimes; chuff++ {
            self.chuff() //have to use self as there is a name conflict
                         // or access properties within the same class
                         // cannot use self for variables defined locally (within same fucntion)
                         // WITHIN STRUCTS, SELF CAN ONLY BE USED TO ACCESS OTHER FUNCTIONS, NOT PROPERTIES
        }
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud: Bool){        //event though the two functions have the same name, they are different as they have different arguments.
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud{
                chuff()
            }
            else{
                println("the tiger can purr, purr")
            }
        }
    }
    
    
    func ageInTigerYearsFromAge(regularAge: Int) -> Int{
        return regularAge*3
    }
    
    
    func randomFact() -> String{
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var facts = ["The Tiger is the biggest species in the cat family", "Tigers can reach a length of 3.3 metres", "A group of tigers is known as an 'ambush' or 'streak'"]
        return facts[randomNumber]
        
    }
    
}