//
//  SetGameApp.swift
//  SetGame
//
//  Created by Nick Callaghan on 08/10/2023.
//

import SwiftUI

@main
struct SetGameApp: App {
    
    @StateObject var viewModel = SetGameViewModel()
    
    var body: some Scene {
        WindowGroup {
            GameView()
        }
        .environmentObject(viewModel)
    }
}
