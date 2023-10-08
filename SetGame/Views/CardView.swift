//
//  CardView.swift
//  SetGame
//
//  Created by Nick Callaghan on 08/10/2023.
//

import SwiftUI

struct CardView: View {
    let card : Card
    let rangeArray: [Int]
    
    init(_ card: Card){
        self.card = card
        rangeArray = Array(0...card.number.rawValue)
        
    }
    
    var body: some View {
        symbols
    }
    
    private var symbols: some View{
        VStack {
            let base = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(.blue)
                .padding(10)
            
            base
        }
    }
}

#Preview {
    CardView(Card(color: .green, shape: .oval, shading: .striped, number: .two))
}
