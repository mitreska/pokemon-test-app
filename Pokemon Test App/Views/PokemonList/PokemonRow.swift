//
//  PokemonRow.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 10/08/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokemonRow: View {
    var item: Pokemon
    
    var body: some View {
        HStack {
            // subs image for the right ones
            if let image = item.imageName {
                WebImage(url: URL(string: image))
                    .onSuccess{ _,_,_ in

                    }
                    .resizable()
                    .placeholder(Image("egg"))
                    .indicator(.activity)
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(10)
            } else {
                Image("egg")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(10)
            }
            
            
            Text(item.name ?? "")
                .padding(.leading, 10)
                .textCase(.uppercase)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, minHeight: 60.0)
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRow(item: Pokemon(name: "Bulbasaur", imageName: "bulbasaur", url: "url_here"))
    }
}
