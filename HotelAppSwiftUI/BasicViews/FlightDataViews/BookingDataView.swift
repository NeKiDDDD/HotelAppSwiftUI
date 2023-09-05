//
//  BookingDataView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 04.09.2023.
//

import SwiftUI

struct BookingDataView: View {
    
    let firstData: String
    let secondData: String
    
    var body: some View {
        HStack {
            HStack {
                Text(firstData)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(width: 100, alignment: .leading)
                    .padding()
                
            }
            Spacer()
            HStack {
                Text(secondData)
                    .font(.system(size: 14))
                    .bold()
                    .multilineTextAlignment(.leading)
                    .frame(width: 200, alignment: .leading)
                    .padding()
            }
            Spacer()
        }
        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
    }
}

struct BookingDataView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDataView(firstData: "Отправление", secondData: "8 часов")
    }
}
