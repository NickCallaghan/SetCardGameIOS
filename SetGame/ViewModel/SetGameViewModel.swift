//
//  SwiftUIView.swift
//  SetGame
//
//  Created by Nick Callaghan on 08/10/2023.
//

import SwiftUI

class SetGameViewModel: ObservableObject {
    @Published var name = "SetGame ViewModel"
    @Published private var game: Game<Card>
    
    init(){
        game = Game(cardContentFactory: SetGameViewModel.cardContentFactory)
    }
    
    var cards: [Card] {
        return game.cards
    }
    
    static func cardContentFactory() -> [Card]{
        // Iterate through all cases of number, shape, color and sahding and generate a card for every comobination
        
        var cards : [Card] = []
        
        for cardNumber in Card.Number.allCases {
            for color in Card.Color.allCases {
                for shape in Card.Shape.allCases {
                    for shading in Card.Shading.allCases {
                        cards.append(Card(color: color, shape: shape, shading: shading, number: cardNumber))
                    }
                }
            }
        }
        return cards
    }
}
