//
//  ContentView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 01.09.2023.
//

import SwiftUI

struct ContentView: View {
    
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
                        Text("Об отеле")
                            .lineLimit(0)
                            .bold()
                            .font(.system(size: 25))
                            .offset(x: -120)
                            .padding()
                        PeculiaritiesView(peculiarities: networking.hotelData?.about_the_hotel?.peculiarities ?? [""])
                            .padding()
                        Text(networking.hotelData?.about_the_hotel?.description ?? "")
                            .multilineTextAlignment(.leading)
                        FacilitiesButtons()
                            .padding()
                    }
                    Section {
                        BasicBlueButton(buttonText: "К выбору номера")
                    }
                }
                
            }
            .navigationTitle("Отель")
            .navigationBarTitleDisplayMode(.inline)
            .font(.headline)
            
        }.preferredColorScheme(.light)
            .onAppear {
                networking.fetch()
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
