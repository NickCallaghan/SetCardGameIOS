//
//  Card.swift
//  SetGame
//
//  Created by Nick Callaghan on 08/10/2023.
//

import Foundation


// FIXME: - Does a card have to be equatable so we can check for matches
struct Card: Identifiable, CustomDebugStringConvertible {
    
    let color: Color
    let shape: Shape
    let shading: Shading
    let number: Number
    let id = UUID().uuidString
    var isSelected = false
    
    var debugDescription: String {
        "\n\(number), \(color), \(shape), \(shading) selected: \(isSelected)" 
    }

    enum Color: String, CaseIterable {
        case red, purple, green
    }
    
    enum Shape: String, CaseIterable {
        case oval, diamond, squiggle
    }
    
    enum Shading: String, CaseIterable {
        case solid, striped, outline
    }
    
    enum Number: Int, CaseIterable {
        case one = 1
        case two = 2
        case three = 3
    }
}
