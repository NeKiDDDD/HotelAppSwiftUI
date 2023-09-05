//
//  ContentView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 01.09.2023.
//

import SwiftUI

struct HotelChooseView: View {
    
    @ObservedObject  var networking = NetworkManager()
    @State var index = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Section {
                    VStack {
                        PictureCarouselView(imageUrls: networking.hotelData?.image_urls ?? [])
                    }
                    
                }
                Section {
                    VStack {
                        StarView(rating: networking.hotelData?.rating, ratingName: networking.hotelData?.rating_name)
                    }.offset(x: -90)
                    Group {
                        VStack {
                            HotelNameView(hotelName: networking.hotelData?.name)
                        }
                        VStack {
                            PriceView(minimalPrice: networking.hotelData?.minimal_price, priceForIt: networking.hotelData?.price_for_it)
                        }.offset(x: -12)
                    }.padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                    Section {
                        Text(K.HotelChooseView.aboutHotel)
                            .lineLimit(0)
                            .bold()
                            .font(.system(size: 25))
                            .offset(x: -120)
                            .padding()
                        PeculiaritiesView(peculiarities: networking.hotelData?.about_the_hotel?.peculiarities ?? [""]).padding()
                        Text(networking.hotelData?.about_the_hotel?.description ?? "")
                            .multilineTextAlignment(.leading)
                            .padding()
                        FacilitiesButtons()
                            .padding()
                    }
                    Section {
                        VStack {
                            NavigationBlueButton(buttonText: K.HotelChooseView.buttonChoose, destination: RoomNumberView(hotelName: networking.hotelData?.name ?? ""))
                                
                        }
                    }
                }
                
            }
            .navigationTitle(K.HotelChooseView.hotel)
            .navigationBarTitleDisplayMode(.inline)
            .font(.headline)
            
        }.preferredColorScheme(.light)
            .onAppear {
                networking.fetch(url: networking.urls[0])
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HotelChooseView()
    }
}
