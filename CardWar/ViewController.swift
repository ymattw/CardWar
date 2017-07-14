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

    func cardImage(cardNumber: Int) -> UIImage? {
        return UIImage(named: Card.cardImageName(cardNumber: cardNumber))
    }

    @IBAction func makeDeal(_ sender: Any) {
        let leftCardNumber = Card.randomCardNumber()
        let rightCardNumber = Card.randomCardNumber()

        leftImageView.image = cardImage(cardNumber: leftCardNumber)
        rightImageView.image = cardImage(cardNumber: rightCardNumber)

        if leftCardNumber > rightCardNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if leftCardNumber < rightCardNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }

    @IBAction func resetDeal(_ sender: Any) {
        leftScore = 0
        leftScoreLabel.text = String(leftScore)
        leftImageView.image = UIImage(named: "back")

        rightScore = 0
        rightScoreLabel.text = String(rightScore)
        rightImageView.image = UIImage(named: "back")
    }
}
