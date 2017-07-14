//
//  Card.swift
//  CardWar
//
//  Created by Matt Wang on 7/14/17.
//  Copyright © 2017 Joyus Studio. All rights reserved.
//

import Foundation

class Card {
    static let cards = [
        "card2", "card3", "card4", "card5", "card6", "card7",
        "card8", "card9", "card10", "jack", "queen", "king", "ace"
    ]

    static func randomCardNumber() -> Int {
        return Int(arc4random_uniform(13))
    }

    static func cardImageName(cardNumber: Int) -> String {
        return cards[cardNumber]
    }
}
