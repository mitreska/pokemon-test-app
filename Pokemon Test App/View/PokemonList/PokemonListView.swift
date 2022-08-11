//
//  PokemonListView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import SwiftUI

struct PokemonListView: View {
    @StateObject var viewModel = PokemonListViewModel()
    
    var body: some View {
            List(viewModel.pokemonList) { pokemon in
                NavigationLink {
                    PokemonDetailView(viewModel: PokemonDetailViewModel(pokemonToShow: pokemon.name ?? "Ops! Name not found.. Try again!"))
                } label: {
                    PokemonRow(item: pokemon)
                }
            }
            .environmentObject(viewModel)
            .navigationTitle("List of Pokémons")
            .navigationBarTitleDisplayMode(.large)
            .onAppear(perform: viewModel.setPokemonList)
            // onAppear set is temp.
    }
}

struct PokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonListView()
    }
}
