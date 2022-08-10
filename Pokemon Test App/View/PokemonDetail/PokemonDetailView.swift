//
//  PokemonDetailView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import SwiftUI

struct PokemonDetailView: View {
    
    @StateObject var viewModel = PokemonDetailViewModel()
    
    var body: some View {
        Text(viewModel.pokemonToShow)
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView()
    }
}
