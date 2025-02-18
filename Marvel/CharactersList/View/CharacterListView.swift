//
//  CharacterListView.swift
//  Marvel
//
//  Created by Luan Orlando on 15/01/25.
//

import SwiftUI

struct CharacterListView: View {
    
    var viewData: CharacterListViewViewDataProtocol
    
    var body: some View {
        List(viewData.list, id: \.name) {
            CharacterListRow(
                viewData: $0
            )
        }
    }
}

#Preview {
    CharacterListView(viewData: CharacterListViewViewData())
}
