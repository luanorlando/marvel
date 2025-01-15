//
//  CharactersListViewModel.swift
//  Marvel
//
//  Created by Luan Orlando on 26/11/24.
//

import MarvelRepository

class CharactersListViewModel: CharactersListViewModelProtocol {
    func fetchCharacters() {
        let repository = MarvelRepository()
        Task {
            let characters = try await repository.fetchNewCharacters()
        }
    }
}
