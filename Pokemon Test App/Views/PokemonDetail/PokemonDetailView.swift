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
        ScrollView (.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                if viewModel.pokemon != nil {
                    // HEADER: image and title
                    HeaderView()
                    
                    Divider()
                        .padding()
                    
                    // CONTENT
                    // - abilities: slot1, slot2, slot3
                    AbilitiesView()
                    // - stats : hp, attack, defense
                    StatsView()
                    
                    Spacer()
                } else {
                    LoadingView()
                }
            }
            
        }
        .padding(.horizontal, 20)
        .navigationBarTitleDisplayMode(.inline)
        .environmentObject(viewModel)
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView()
    }
}
