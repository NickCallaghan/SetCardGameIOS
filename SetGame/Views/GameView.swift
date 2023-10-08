//
//  ContentView.swift
//  SetGame
//
//  Created by Nick Callaghan on 08/10/2023.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var viewModel: SetGameViewModel
    
    var body: some View {
        AspectVGrid(items: viewModel.cards, aspectRatio: 2/3){card in
            CardView(card)
        }
    }
}

#Preview {
    GameView()
        .environmentObject(SetGameViewModel())
}
