//
//  PecularitiesView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 02.09.2023.
//

import SwiftUI

struct PeculiaritiesView: View {
    
    let peculiarities: [String?]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 2), GridItem(.flexible(), spacing: 2)], spacing: 2) {
                        ForEach(peculiarities ?? [""], id: \.self) { peculiarities in
                            CollectionViewCell(infoDataCell: peculiarities ?? "")
                                
                        }.dynamicTypeSize(.xSmall)
            }
        }
    }
}


struct PeculiaritiesView_Previews: PreviewProvider {
    static var previews: some View {
        PeculiaritiesView(peculiarities: ["asdasdasdasasdasdasdasdadasdasdasdd","asdasdasadssadasdassadsdassdasdasdas"])
    }
}
