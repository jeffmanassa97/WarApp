//
//  ViewController.swift
//  WarApp
//
//  Created by Jeffrey Manassa on 8/5/18.
//  Copyright © 2018 Jeffrey Manassa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView! // a type of UIImageView class
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel! // a type of UILabel class
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // outside the scope of dealTapped so they remain updated
    var player = 0
    var CPU = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2 // 2-14
        // print("left random number is \(leftRandomNumber)")
        let rightRandomNumber = arc4random_uniform(13) + 2
        // print("right random number is \(rightRandomNumber)")

        // Change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Compare the numbers
        if leftRandomNumber > rightRandomNumber{
            player += 1
            leftScoreLabel.text = String(player) // unwrap player
        }
        else if leftRandomNumber < rightRandomNumber{
            CPU += 1
            rightScoreLabel.text = String(CPU)
        }
    }
    
    

}

