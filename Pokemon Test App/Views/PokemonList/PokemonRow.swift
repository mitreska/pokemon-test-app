//
//  PokemonRow.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import SwiftUI

struct PokemonRow: View {
    var item: Pokemon
    
    var body: some View {
        HStack {
            Image(item.imageName ?? "")
                .resizable()
                .frame(width: 60, height: 60, alignment: .trailing)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 60.0)
                        .strokeBorder(Color.mint, style: StrokeStyle(lineWidth: 2))
                )
            
            Text(item.name ?? "")
                .padding()
            
            Spacer()
        }
        .frame(maxWidth: .infinity, minHeight: 60.0)
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRow(item: Pokemon(name: "Bulbasaur", imageName: "bulbasaur", pokemonURL: "url_here"))
    }
}
