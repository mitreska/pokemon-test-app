//
//  AbilitiesView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 11/08/22.
//

import SwiftUI

struct AbilitiesView: View {
    var body: some View {
        Text("Abilities")
            .fontWeight(.medium)
            .font(.title)
        
        Text("Slot 1")
            .fontWeight(.regular)
            .font(.body)
            .padding(.leading, 20)
        
        Text("Slot 2")
            .fontWeight(.regular)
            .font(.body)
            .padding(.leading, 20)
            .padding(.top, 5)
        
        Text("Slot 3")
            .fontWeight(.regular)
            .font(.body)
            .padding(.leading, 20)
            .padding(.top, 5)
    }
}

struct AbilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        AbilitiesView()
    }
}
