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
                            .background(/*@START_MENU_TOKEN@*/Color(red: 0.984, green: 0.984, blue: 0.989)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                            .font(.system(size: 12))
//                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
        }
    }
}

struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(infoDataCell: "Cell")
    }
}
