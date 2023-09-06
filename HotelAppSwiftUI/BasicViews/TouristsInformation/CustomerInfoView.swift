//
//  CustomerInfoView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 05.09.2023.
//

import SwiftUI

struct CustomerInfoView: View {
    var body: some View {
        VStack {
            ClientInfoView(textData: K.BookingView.Tourist.phoneNumber, textField: "")
            ClientInfoView(textData: K.BookingView.Tourist.mail, textField: "")
            Text(K.BookingView.disclamer).foregroundColor(.gray)
                .font(.system(size: 14))
                .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
        }.padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
    }
}

struct CustomerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerInfoView()
    }
}
