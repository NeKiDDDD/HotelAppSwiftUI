//
//  DetailButton.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 03.09.2023.
//

import SwiftUI

struct DetailButton: View {
    var body: some View {
        Button(action: {
        }) {
            HStack {
                Text("Подробнее о номере")
                    .bold()
                    .font(.system(size: 10))
//                    .frame(width: 200, alignment: .leading)
                Image(systemName: "arrow.right")
            }.foregroundColor(.blue)
                .frame(alignment: .leading)
                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            
            
        }
        .background(/*@START_MENU_TOKEN@*/Color(red: 0.906, green: 0.946, blue: 1.001)/*@END_MENU_TOKEN@*/)
        .cornerRadius(5)
    }
}

struct DetailButton_Previews: PreviewProvider {
    static var previews: some View {
        DetailButton()
    }
}
