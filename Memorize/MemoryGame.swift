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
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, cardIsMatched: false, content: content))
            cards.append(Card(isFaceUp: false, cardIsMatched: false, content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool
        var cardIsMatched: Bool
        var content: CardContent
    }
}
