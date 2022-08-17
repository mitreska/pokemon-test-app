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
        List {
            ForEach(contentViewModel.pokemonList) { pokemon in
                NavigationLink {
                    PokemonDetailView(viewModel: PokemonDetailViewModel(pokemonToShow: pokemon))
                } label: {
                    PokemonRow(item: pokemon)
                }
            }
            
            if contentViewModel.apiResult?.next != nil {
                ProgressView()
                    .onAppear {
                        contentViewModel.getNextPage()
                    }
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
