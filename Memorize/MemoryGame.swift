//
//  MemoryGame.swift
//  Memorize
//
//  Created by OLEKSANDR SOKOLOV on 24.10.2020.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var cardIsMatched: Bool
        var content: CardContent
    }
}
