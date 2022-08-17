//
//  HeaderView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 16/08/22.
//

import SwiftUI

struct HeaderView: View {
    
    @EnvironmentObject var viewModel: PokemonDetailViewModel
    
    var body: some View {
        HStack(alignment: .center) {
            // need to set image
            Image("bulbasaur")
                .resizable()
                .frame(width: 120, height: 120)
                .shadow(radius: 7)
            
            VStack(alignment: .leading) {
                Text(viewModel.pokemon?.name ?? "")
                    .fontWeight(.medium)
                    .font(.largeTitle)
                    .textCase(.uppercase)
                
                Text(viewModel.pokemonAbilities)
                    .fontWeight(.light)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .frame(alignment: .trailing)
            }
            
            Spacer()
        }
        .frame(height: 120)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
