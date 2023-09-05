//
//  DetailedFlightData.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 05.09.2023.
//

import SwiftUI

struct DetailedFlightData: View {
    
    let firstData: String
    let secondData: String
    let thirdData: String
    let fourthData: String
    let fifthData: String
    let sixthData: String
    let seventhData: String
    let eighthData: String
    let ninthData: String
    let tenthData: String
    let eleventhData: String
    let tvelwthData: String
    let thirteenthData: String
    let fourteenthData: String
    
    var body: some View {
        VStack {
            BookingDataView(firstData: firstData, secondData: secondData)
            BookingDataView(firstData: thirdData, secondData: fourthData)
            BookingDataView(firstData: fifthData, secondData: sixthData)
            BookingDataView(firstData: seventhData, secondData: eighthData)
            BookingDataView(firstData: ninthData, secondData: tenthData)
            BookingDataView(firstData: eleventhData, secondData: tvelwthData)
            BookingDataView(firstData: thirteenthData, secondData: fourteenthData)
        }
    }
}

struct DetailedFlightData_Previews: PreviewProvider {
    static var previews: some View {
        DetailedFlightData(firstData: "Вылет из", secondData: "Вылет из", thirdData: "Вылет из", fourthData: "Вылет из", fifthData: "Вылет из", sixthData: "Вылет из", seventhData: "Вылет из", eighthData: "Вылет из", ninthData: "Вылет из", tenthData: "Вылет из", eleventhData: "Вылет из", tvelwthData: "Вылет из", thirteenthData: "Вылет из", fourteenthData: "Вылет из")
    }
}
