//
//  CharacterListViewViewDataProtocol.swift
//  Marvel
//
//  Created by Luan Orlando on 22/01/25.
//

protocol CharacterListViewViewDataProtocol {
    var list: [any CharacterListRowViewDataProtocol] { get }
}
