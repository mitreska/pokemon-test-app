//
//  ContentView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 09/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            PokemonListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
