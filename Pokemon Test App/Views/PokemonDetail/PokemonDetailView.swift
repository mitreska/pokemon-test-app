//
//  PokemonDetailView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import SwiftUI

struct PokemonDetailView: View {
    
    @StateObject var viewModel = PokemonDetailViewModel()
    @State var presentDialog = false
    
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
        .navigationBarTitleDisplayMode(.large)
        .environmentObject(viewModel)
        .toolbar(content: {
            if viewModel.isFavorite {
                Button(action: {
                    self.presentDialog = true
                }, label: {
                    Label("Add", systemImage: "star.fill")
                })
                    .confirmationDialog("You already catch this one!", isPresented: $presentDialog, titleVisibility: .visible) {
                        Button("OK!", role: .destructive) {}
                    }
            } else {
                Button(action: {
                    viewModel.capturePokemon()
                }, label: {
                    Label("Add", systemImage: "star")
                })
            }
        })
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView()
    }
}
