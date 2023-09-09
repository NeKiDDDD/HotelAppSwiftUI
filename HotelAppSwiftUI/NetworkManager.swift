//
//  NetworkManager.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 01.09.2023.
//

import Foundation

class NetworkManager: ObservableObject {

    @Published var hotelData: Hotel?
    @Published var roomData: Rooms?
    @Published var bookingData: Booking?

    let urls = ["https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3#", "https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd", "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8"]


    func fetchHotelData(url: String) {
        if let url = URL(string: url) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Hotel.self, from: safeData)
                            DispatchQueue.main.async {
                                self.hotelData = results
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    func fetchRoomsData(url: String) {
        if let url = URL(string: url) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Rooms.self, from: safeData)
                            DispatchQueue.main.async {
                                self.roomData = results
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    func fetchBookingData(url: String) {
        if let url = URL(string: url) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Booking.self, from: safeData)
                            DispatchQueue.main.async {
                                self.bookingData = results
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
}
