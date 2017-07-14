//
//  ViewController.swift
//  CardWar
//
//  Created by Matt Wang on 7/11/17.
//  Copyright © 2017 Joyus Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var leftScore = 0
    var rightScore = 0

    let cards = ["card2", "card3", "card4", "card5", "card6", "card7", "card8",
                 "card9", "card10", "jack", "queen", "king", "ace"]


    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func makeDeal(_ sender: Any) {
        let leftCardNumber = Int(arc4random_uniform(13))
        let rightCardNumber = Int(arc4random_uniform(13))

        leftImageView.image = UIImage(named: cards[leftCardNumber])
        rightImageView.image = UIImage(named: cards[rightCardNumber])

        if leftCardNumber > rightCardNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if leftCardNumber < rightCardNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
}

