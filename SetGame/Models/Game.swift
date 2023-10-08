//
//  Game.swift
//  SetGame
//
//  Created by Nick Callaghan on 08/10/2023.
//

import Foundation

struct Game<CardContent> {
    private(set) var cards: [CardContent]
    private(set) var dealtCards: [CardContent]
    
    private (set) var score = 0
    
    init(cardContentFactory: ()->[CardContent]){
        cards = cardContentFactory()
        dealtCards = []
    }
    
    // MARK: - Intents
    private mutating func deal(){
        
    }
    
    private func choose(){
        
    }
}
