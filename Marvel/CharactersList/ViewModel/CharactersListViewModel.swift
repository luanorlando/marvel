//
//  CharactersListViewModel.swift
//  Marvel
//
//  Created by Luan Orlando on 26/11/24.
//

class CharactersListViewModel: CharactersListViewModelProtocol {
    
    private let service: CharacterListServiceProtocol
    
    init(service: CharacterListServiceProtocol) {
        self.service = service
    }
    
    // MARK: - service: CharacterListServiceProtocol methods
    func fetchCharacters() {
        Task {
            let characters = try await service.fetchCharacters()
            print(characters)
        }
    }
}
