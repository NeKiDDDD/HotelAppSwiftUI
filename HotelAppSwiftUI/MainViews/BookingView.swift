//
//  BookingView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 03.09.2023.
//

import SwiftUI

struct BookingView: View {
    
    @ObservedObject  var networking = NetworkManager3()
    
    var body: some View {
        ScrollView {
            VStack {
                Section {
                    VStack {
                        StarView(rating: networking.bookingData?.horating, ratingName: networking.bookingData?.rating_name)
                            .offset(x: -90)
                        HotelNameView(hotelName: networking.bookingData?.hotel_name)
                    }.padding()
                
                }.background(Color.white)
                .cornerRadius(20)
                Section {
                    DetailedFlightData(firstData: K.BookingView.from, secondData: networking.bookingData?.departure ?? "", thirdData: K.BookingView.city, fourthData: networking.bookingData?.arrival_country ?? "", fifthData: K.BookingView.dates, sixthData: networking.bookingData?.fullData ?? "", seventhData: K.BookingView.nights, eighthData: networking.bookingData?.days ?? "", ninthData: K.BookingView.hotel, tenthData: networking.bookingData?.hotel_name ?? "", eleventhData: K.BookingView.room, tvelwthData: networking.bookingData?.room ?? "", thirteenthData: K.BookingView.food, fourteenthData: networking.bookingData?.nutrition ?? "")
                }.background(Color.white)
                    .cornerRadius(20)
                Section {
                    CustomerInfoView()
                }.background(Color.white)
                    .cornerRadius(20)
                Section {
                    List {
                        TouristEnterDataView()
                    }
                }.background(Color.white)
                    .cornerRadius(20)
                Section {
                    PriceDataFullView(firstData: K.BookingView.PriceData.tour, secondData: networking.bookingData?.tourPriceString ?? "", thirdData: K.BookingView.PriceData.fuel, fourthData: networking.bookingData?.fuelChargeString ?? "", fifthData: K.BookingView.PriceData.service, sixthData: networking.bookingData?.serviceChargeString ?? "", seventhData: K.BookingView.PriceData.check, eighthData: networking.bookingData?.finalPrice ?? "")
                }.background(Color.white)
                    .cornerRadius(20)
                Section {
                    NavigationBlueButton(buttonText: ("Оплатить " + String(networking.bookingData?.finalPrice ?? "")), destination: CompletedView())
                }.background(Color.white)
                    .cornerRadius(20)
            }.navigationTitle(K.BookingView.screenName)
            .background((/*@START_MENU_TOKEN@*/Color(red: 0.984, green: 0.984, blue: 0.989)/*@END_MENU_TOKEN@*/))
            .onAppear {
                networking.fetch(url: networking.urls[2])
            }
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}


