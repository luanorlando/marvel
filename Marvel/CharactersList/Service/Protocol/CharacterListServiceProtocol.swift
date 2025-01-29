//
//  CharacterListServiceProtocol.swift
//  Marvel
//
//  Created by Luan Orlando on 22/01/25.
//

protocol CharacterListServiceProtocol {
    func fetchCharacters() async throws -> CharacterListModel
}
