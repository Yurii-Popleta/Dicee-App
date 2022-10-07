//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var diceeImage = DiceeImage()

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageView1.image = diceeImage.images.randomElement()
        diceImageView2.image = diceeImage.images.randomElement()
        
    }

}

