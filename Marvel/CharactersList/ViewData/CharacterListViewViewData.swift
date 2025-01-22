//
//  CharacterListViewViewData.swift
//  Marvel
//
//  Created by Luan Orlando on 22/01/25.
//

struct CharacterListViewViewData: CharacterListViewViewDataProtocol {
    var list: [any CharacterListRowViewDataProtocol] = [
        CharacterListRowViewData(
            id: 0,
            imageUrl: "https://p2.trrsf.com/image/fget/cf/774/0/images.terra.com/2024/07/28/1651641699-3a8eb62cd10602cdc82f6d046d84b343.jpg",
            name: "Homem Triângulo"
        )
    ]
}
