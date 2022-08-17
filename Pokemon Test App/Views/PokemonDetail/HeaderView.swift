//
//  HeaderView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 16/08/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct HeaderView: View {
    
    @EnvironmentObject var viewModel: PokemonDetailViewModel
    
    var body: some View {
        HStack(alignment: .center) {
            // need to set image
            WebImage(url: URL(string: viewModel.pokemon?.imageName ?? ""))
                .resizable()
                .placeholder(Image("egg"))
                .indicator(.activity)
                .frame(width: 120, height: 120)
                .shadow(radius: 7)
            
            VStack(alignment: .leading) {
                Text(viewModel.pokemon?.name ?? "")
                    .fontWeight(.regular)
                    .font(.title)
                    .textCase(.uppercase)
                    .scaledToFit()
                
                Text(viewModel.pokemonAbilities)
                    .fontWeight(.light)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .frame(alignment: .trailing)
            }
            
            Spacer()
        }
        .frame(height: 120)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
