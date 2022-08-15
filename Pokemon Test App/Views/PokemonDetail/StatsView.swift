//
//  StatsView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 11/08/22.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        Text("Stats")
            .fontWeight(.medium)
            .font(.title)
            .padding(.top, 30)
        
        HStack {
            Text("HP:")
                .fontWeight(.bold)
                .font(.body)
                .padding(.leading, 20)
            
            Text("68")
                .fontWeight(.medium)
                .font(.body)
            
            Spacer()
        }
        
        HStack {
            Text("ATTACK:")
                .fontWeight(.bold)
                .font(.body)
                .padding(.leading, 20)
                .padding(.top, 5)
            
            Text("68")
                .fontWeight(.medium)
                .font(.body)
                .padding(.top, 5)
            
            Spacer()
        }
        
        HStack {
            Text("DEFENSE:")
                .fontWeight(.bold)
                .font(.body)
                .padding(.leading, 20)
                .padding(.top, 5)
            
            Text("68")
                .fontWeight(.medium)
                .font(.body)
                .padding(.top, 5)
            
            Spacer()
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
