//
//  CharacterListRowViewDataProtocol.swift
//  Marvel
//
//  Created by Luan Orlando on 15/01/25.
//

import SwiftUICore

protocol CharacterListRowViewDataProtocol: Identifiable {
    var imageUrl: String { get }
    var name: String { get }
}
