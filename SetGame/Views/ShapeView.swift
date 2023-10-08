//
//  ShapeView.swift
//  SetGame
//
//  Created by Nick Callaghan on 08/10/2023.
//

import SwiftUI

struct ShapeView: View {
    
    let shape: Card.Shape
    let shading: Card.Shading
    let color: Card.Color
    
    var body: some View {
        VStack{
        RoundedRectangle(cornerRadius: 75)
            .stroke(style: StrokeStyle(lineWidth: 5))
            .aspectRatio(5/2,contentMode: .fit)
            .foregroundColor(.red)
            .padding(25)
        }
    }
}

#Preview {
    ShapeView(shape: .oval, shading: .solid, color: .red)
}
