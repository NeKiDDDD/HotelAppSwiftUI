//
//  RoomNumberView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 03.09.2023.

import SwiftUI

struct RoomNumberView: View {
    
    @ObservedObject var networking = NetworkManager()
    var hotelName: String = K.RoomNumberView.hotelName
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        List {
            if let rooms = networking.roomData?.rooms {
                ForEach(rooms, id: \.id) { room in
                    RoomTableCell(imageUrls: room.image_urls,
                                  numberName: room.name,
                                  peculiarities: room.peculiarities,
                                  minimalPrice: room.price,
                                  priceForIt: room.price_per,
                                  buttonText: K.RoomNumberView.buttonChoose)
                }.listRowBackground(/*@START_MENU_TOKEN@*/Color(red: 0.984, green: 0.984, blue: 0.989)/*@END_MENU_TOKEN@*/)
                    .listRowSeparator(.hidden)
            } else {
                Text(K.RoomNumberView.downloadingData)
            }
        }
        .listStyle(.inset)
        .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(hotelName)
                    .font(.system(size: 15, weight: .bold))
                    .multilineTextAlignment(.center)
            }
        }
        .onAppear {
            networking.fetchRoomsData(url: networking.urls[1])
        }
    }
}

struct RoomNumberView_Previews: PreviewProvider {
    @State static var coordinator = Coordinator()
    static var previews: some View {
        NavigationStack {
            RoomNumberView(hotelName: K.RoomNumberView.hotelName)
                .environmentObject(coordinator)
        }
    }
}



