//
//  CollectionViewCell.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 02.09.2023.
//

import SwiftUI

struct CollectionViewCell: View {
    
    let infoDataCell: String
    
    var body: some View {
        ZStack {
            Text(infoDataCell)
                            .padding()
                            .background(Color.gray)
                            .cornerRadius(10)
                            .padding(.horizontal, 10)
                            .font(.system(size: 12))
                            .frame(maxWidth: .infinity)
        }
    }
}

struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(infoDataCell: "Cell")
    }
}
