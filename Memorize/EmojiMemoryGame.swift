//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by OLEKSANDR SOKOLOV on 24.10.2020.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String>
    
    // MARK: -Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
