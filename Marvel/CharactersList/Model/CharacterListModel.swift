//
//  CharacterListModel.swift
//  Marvel
//
//  Created by Luan Orlando on 28/01/25.
//

struct CharacterListModel {
    let copyright: String
    let attributionText: String
    var characters: [Character]
    
    struct Character {
        var id: Int
        var name: String
        var description: String
        var urlThumbnail: String
        var resourceURI: String
    }
}
