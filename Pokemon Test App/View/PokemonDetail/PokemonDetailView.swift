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
        VStack(alignment: .leading) {
            // HEADER: image and title
            HStack(alignment: .center) {
                Image("bulbasaur")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .shadow(radius: 7)
                
                VStack(alignment: .leading) {
                    Text(viewModel.pokemonToShow)
                        .fontWeight(.medium)
                        .font(.largeTitle)
                    
                    Text("style 1 - style 2")
                        .fontWeight(.light)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .frame(alignment: .trailing)
                }
                
                Spacer()
            }
            .frame(height: 120)
            
            Divider()
                .padding()
            
            // CONTENT
            // - abilities: slot1, slot2, slot3
            AbilitiesView()
            // - stats : hp, attack, defense
            StatsView()
            
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .environmentObject(viewModel)
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView()
    }
}
