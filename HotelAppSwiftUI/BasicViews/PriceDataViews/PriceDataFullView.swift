//
//  PriceDataFullView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 05.09.2023.
//

import SwiftUI

struct PriceDataFullView: View {
    
    let firstData: String
    let secondData: String
    let thirdData: String
    let fourthData: String
    let fifthData: String
    let sixthData: String
    let seventhData: String
    let eighthData: String
    
    var body: some View {
        VStack {
            PriceDataView(firstData: firstData, secondData: secondData)
            PriceDataView(firstData: thirdData, secondData: fourthData)
            PriceDataView(firstData: fifthData, secondData: sixthData)
            PriceDataView(firstData: seventhData, secondData: eighthData)
        }
    }
}

struct PriceDataFullView_Previews: PreviewProvider {
    static var previews: some View {
        PriceDataFullView(firstData: "", secondData: "", thirdData: "", fourthData: "", fifthData: "", sixthData: "", seventhData: "", eighthData: "")
    }
}
