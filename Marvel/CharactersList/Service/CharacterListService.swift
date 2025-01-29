//
//  CharacterListService.swift
//  Marvel
//
//  Created by Luan Orlando on 22/01/25.
//

import MarvelRepository

struct CharacterListService: CharacterListServiceProtocol {
    
    private let repository = MarvelRepository()
    
    func fetchCharacters() async throws -> CharacterListModel {
        let response = try await repository.fetchNewCharacters()
        
        return .init(
            copyright: response.copyright,
            attributionText: response.attributionText,
            characters: convertedList(from: response)
        )
    }
    
    private func convertedList(from response: CharactersModel) -> [CharacterListModel.Character] {
        response.characters.map {
            CharacterListModel.Character(
                id: $0.id,
                name: $0.name,
                description: $0.description,
                urlThumbnail: $0.urlThumbnail,
                resourceURI: $0.resourceURI
            )
        }
    }
}
