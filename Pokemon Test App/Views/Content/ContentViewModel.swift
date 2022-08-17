//
//  ContentViewModel.swift
//  Pokemon Test App
//
//  Created by Mikha's Book on 15/08/22.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    let apiConnection = APIConn()
    private var task: Cancellable? = nil
    
    @Published var apiResult: APIMainResult?
    @Published var pokemonList: [Pokemon] = []
    
    func getPokemons() {
        self.task = apiConnection.getListPokemons()
            .sink(receiveCompletion: { (completion) in
                switch completion {
                case .finished:
                    ()
                case .failure(let error):
                    print("ERROR: ", error.localizedDescription)
                }
            }, receiveValue: { [weak self] (response) in
                switch response.result {
                case .success(let result):
                    print("SUCCESS: ", result)
                    self?.apiResult = result
                    self?.pokemonList = result.results.map { Pokemon(with: $0) }
                    self?.setImageURL(list: self?.pokemonList)
                case .failure(let error):
                    print(error.localizedDescription)
                
                }
            })
    }
    
    func setImageURL(list: [Pokemon]?) {
        if let list = list {
            list.forEach({ [weak self] pokemon in
                if pokemon.pokemonID == nil {
                    // creating image path.
                    var pokemonID = pokemon.url?.replacingOccurrences(of: "https://pokeapi.co/api/v2/pokemon/", with: "")
                    pokemonID = pokemonID?.replacingOccurrences(of: "/", with: "")
                    
                    if let ID = pokemonID {
                        pokemon.imageName = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(ID).png"
                    } else {
                        pokemon.imageName = "egg"
                    }
                    
                }
            })
        }
    }
    
    func getNextPage() {
        if let url = apiResult?.next {
            self.task = apiConnection.getNextPage(nextURL: url)
                .sink(receiveCompletion: { (completion) in
                    switch completion {
                    case .finished:
                        ()
                    case .failure(let error):
                        print("ERROR: ", error.localizedDescription)
                    }
                }, receiveValue: { [weak self] (response) in
                    switch response.result {
                    case .success(let result):
                        print("SUCCESS: ", result)
                        self?.apiResult = result
                        self?.pokemonList += result.results.map { Pokemon(with: $0) }
                        self?.setImageURL(list: self?.pokemonList)
                    case .failure(let error):
                        print(error.localizedDescription)
                    
                    }
                })

        }
    }
        
}
