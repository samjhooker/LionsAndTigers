//
//  ViewController.swift
//  LionsAndTigera
//
//  Created by Samuel Hooker on 11/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var randomFactLabel: UILabel!
    
    var myTigers:[Tiger] = [] //defined outside function therefroe can be used anywhere
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTiger.age = myTiger.ageInTigerYearsFromAge(myTiger.age)
        
        myTigers.append(myTiger)
        
        
        //myTiger.chuff()
        //println("my tigers name is \(myTiger.name), its age is \(myTiger.age), its breed is \(myTiger.breed), its image is \(myTiger.image)")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        randomFactLabel.text = myTiger.randomFact()
        
        
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "IndoChineese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        secondTiger.age = secondTiger.ageInTigerYearsFromAge(secondTiger.age)
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jcob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        thirdTiger.age = thirdTiger.ageInTigerYearsFromAge(thirdTiger.age)
        
        var forthTiger = Tiger()
        forthTiger.name = "Spar"
        forthTiger.breed = "Siberian Tiger"
        forthTiger.age = 5
        forthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        forthTiger.age = forthTiger.ageInTigerYearsFromAge(forthTiger.age)
        myTigers += [secondTiger, thirdTiger, forthTiger] //appends all to tigers array
        
        myTiger.chuffANumberOfTimes(3)
        myTiger.chuffANumberOfTimes(4, isLoud: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButonPressed(sender: AnyObject) {
        
        var randomIndex:Int
        do {
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        } while randomIndex == currentIndex
        currentIndex = randomIndex
        
        
        let tiger = myTigers[randomIndex]
        
//        myImageView.image = tiger.image
//        nameLabel.text = tiger.name
//        ageLabel.text = "\(tiger.age)"
//        breedLabel.text = tiger.breed
        
        UIView.transitionWithView(self.view, duration: 0.5, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            self.randomFactLabel.text = tiger.randomFact()
        }, completion: {
            (finished: Bool) -> () in
        })
        
    }
   
}

