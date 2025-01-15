//
//  CharacterListRow.swift
//  Marvel
//
//  Created by Luan Orlando on 15/01/25.
//

import SwiftUI

struct CharacterListRow: View {
    
    var viewData: CharacterListRowViewDataProtocol
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: viewData.imageUrl)) { phase in
                switch phase {
//                case .empty:
//                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .frame(width: 70, height: 70)
                        .scaledToFit()
                        .cornerRadius(12)
                    
                case .failure, .empty:
                    Image(systemName: "exclamationmark.triangle")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .scaledToFit()
                        .foregroundColor(.red)
                    
                @unknown default:
                    EmptyView()
                }
                
            }.padding([.leading, .trailing], 14)
            
            Text(viewData.name).font(.system(size: 24))
            
            Spacer()
        }
    }
}

#Preview {
    Group {
        CharacterListRow(viewData: CharacterListRowViewData())
        CharacterListRow(viewData: CharacterListRowViewData())
    }
    
}
