//
//  TouristEnterDataView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 05.09.2023.
//

import SwiftUI

struct TouristEnterDataView: View {
    var body: some View {
        VStack {
            ClientInfoView(textData: K.BookingView.Tourist.name, textField: "")
            ClientInfoView(textData: K.BookingView.Tourist.surName, textField: "")
            ClientInfoView(textData: K.BookingView.Tourist.birthDate, textField: "")
            ClientInfoView(textData: K.BookingView.Tourist.citizenship, textField: "")
            ClientInfoView(textData: K.BookingView.Tourist.passportNumber, textField: "")
            ClientInfoView(textData: K.BookingView.Tourist.expiredDate, textField: "")

        }.padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
    }
}

struct TouristEnterDataView_Previews: PreviewProvider {
    static var previews: some View {
        TouristEnterDataView()
    }
}
