//
//  BookingModel.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 04.09.2023.
//

import Foundation

struct Booking: Codable, Identifiable {
    let id: Int
    let hotel_name: String
    let hotel_adress: String
    let horating: Int
    let rating_name: String
    let departure: String
    let arrival_country: String
    let tour_date_start: String
    let tour_date_stop: String
    let number_of_nights: Int
    let room: String
    let nutrition: String
    let tour_price: Int
    let fuel_charge: Int
    let service_charge: Int
    
    var fullData: String {
        String(tour_date_start) + "-" + String(tour_date_stop)
    }
    
    var days: String {
        String(number_of_nights) + " ночей"
    }
    
    var tourPriceString: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let stringInt = numberFormatter.string(from: NSNumber(value: tour_price)) ?? ""
        return stringInt + " P"
    }
    
    var fuelChargeString: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let stringInt = numberFormatter.string(from: NSNumber(value: fuel_charge)) ?? ""
        return stringInt + " P"
    }
    
    var serviceChargeString: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let stringInt = numberFormatter.string(from: NSNumber(value: service_charge)) ?? ""
        return stringInt + " P"
    }
    
    var finalPrice: String {
        let variableInt = tour_price + fuel_charge + service_charge
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let stringInt = numberFormatter.string(from: NSNumber(value: variableInt)) ?? ""
        return stringInt + " P"
    }
}
