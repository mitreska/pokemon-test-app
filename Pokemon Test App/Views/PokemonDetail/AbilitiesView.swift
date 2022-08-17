//
//  AbilitiesView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 11/08/22.
//

import SwiftUI

struct AbilitiesView: View {
    @EnvironmentObject var viewModel: PokemonDetailViewModel
    
    var body: some View {
        Text("Abilities")
            .fontWeight(.medium)
            .font(.title)
        
        if let abilities = viewModel.pokemon?.abilities {
            ForEach(abilities) { item in
                if item.isHidden ?? false {
                    HStack {
                        Text(item.ability.name)
                            .fontWeight(.bold)
                            .font(.body)
                            .foregroundColor(Color.secondary)
                            .padding(.leading, 20)
                            .padding(.top, 5)
                            .textCase(.uppercase)
                        
                        Text("hidden")
                            .fontWeight(.light)
                            .font(.body)
                            .foregroundColor(Color.red)
                            .opacity(30.0)
                            .padding(.leading, 10)
                            .padding(.top, 5)
                        
                        Spacer()
                    }
                } else {
                    Text(item.ability.name)
                        .fontWeight(.regular)
                        .font(.body)
                        .padding(.leading, 20)
                        .padding(.top, 5)
                        .textCase(.uppercase)
                }
            }
        } else {
            Text("No abilities to list")
                .fontWeight(.regular)
                .font(.body)
                .padding(.leading, 20)
                .padding(.top, 5)
        }
    }
}

struct AbilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        AbilitiesView()
    }
}
