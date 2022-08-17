//
//  ContentView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 09/08/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    @StateObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            if contentViewModel.pokemonList.isEmpty {
                LoadingView()
            } else {
                PokemonListView()
            }
        }
        .environmentObject(contentViewModel)
        .onAppear(perform: {
            contentViewModel.getPokemons()
        })
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
