//
//  LoadingView.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 15/08/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack{
            ProgressView()
            Text("Loading...")
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
