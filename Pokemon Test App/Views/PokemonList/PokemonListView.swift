//
//  PokemonListView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import SwiftUI

struct PokemonListView: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    
    @StateObject var viewModel = PokemonListViewModel()
    
    var body: some View {
        List(contentViewModel.pokemonList) { pokemon in
                NavigationLink {
                    PokemonDetailView(viewModel: PokemonDetailViewModel(pokemonToShow: pokemon.url ?? "Ops! Pokémon not found.. Try again!"))
                } label: {
                    PokemonRow(item: pokemon)
                }
            }
            .environmentObject(viewModel)
            .navigationTitle("List of Pokémons")
            .navigationBarTitleDisplayMode(.large)
    }
}

struct PokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonListView()
    }
}
