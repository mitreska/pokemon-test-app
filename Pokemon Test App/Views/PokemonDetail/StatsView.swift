//
//  StatsView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 11/08/22.
//

import SwiftUI

struct StatsView: View {
    @EnvironmentObject var viewModel: PokemonDetailViewModel
    
    var body: some View {
        
        Text("Stats")
            .fontWeight(.medium)
            .font(.title)
            .padding(.top, 30)
        
        if let stats = viewModel.pokemon?.stats {
            ForEach(stats) { item in
                HStack {
                    Text(item.stat.name)
                        .fontWeight(.bold)
                        .font(.body)
                        .padding(.leading, 20)
                        .padding(.top, 5)
                        .textCase(.uppercase)
                        .foregroundColor(Color.secondary)
                    
                    Text(String(item.baseStat))
                        .fontWeight(.medium)
                        .font(.body)
                    
                    Spacer()
                }
            }
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
