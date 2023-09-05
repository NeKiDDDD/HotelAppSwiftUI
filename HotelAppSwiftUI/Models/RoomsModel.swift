//
//  RoomsModel.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 03.09.2023.
//

import Foundation

struct Rooms: Codable {
    let rooms: [Room]
}

struct Room: Codable, Identifiable {
    let id: Int
    let name: String
    let price: Int
    let price_per: String
    let peculiarities: [String]
    let image_urls: [URL]
}



