//
//  ContentView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 01.09.2023.
//

import SwiftUI

struct HotelChooseView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    @ObservedObject  var networking = NetworkManager()
    @State var index = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Group {
                    Section {
                        VStack {
                            PictureCarouselView(imageUrls: networking.hotelData?.image_urls ?? [])
                        }
                        Section {
                            HStack {
                                StarView(rating: networking.hotelData?.rating, ratingName: networking.hotelData?.rating_name)
                                Spacer()
                            }.padding()
                            Group {
                                HStack {
                                    HotelNameView(hotelName: networking.hotelData?.name)
                                }.padding()
                                HStack {
                                    PriceView(minimalPrice: networking.hotelData?.minimal_price, priceForIt: networking.hotelData?.price_for_it)
                                }.padding()
                            }
                        }
                        
                    }
                }.background(Color.white)
                    .cornerRadius(20)
                
                Section {
                    VStack {
                        HStack {
                            Text(K.HotelChooseView.aboutHotel)
                                .lineLimit(0)
                                .bold()
                                .font(.system(size: 25))
                            Spacer()
                        }
                        .padding()
                        HStack {
                            PeculiaritiesView(peculiarities: networking.hotelData?.about_the_hotel?.peculiarities ?? [""]).padding()
                        }
                        HStack {
                            Text(networking.hotelData?.about_the_hotel?.description ?? "")
                                .multilineTextAlignment(.leading)
                        }.padding()
                        HStack {
                            FacilitiesButtons()
                        }.padding()
                    }
                }.background(Color.white)
                    .cornerRadius(20)
                Section {
                    HStack {
                        Spacer()
                        Button(action: {
                            coordinator.goRoom()
                        }) {
                            Text(K.HotelChooseView.buttonChoose)
                                .foregroundColor(.white)
                                .padding()
                        }.contentShape(Rectangle())
                        Spacer()
                    }.background(Color.blue)
                        .cornerRadius(20)
                        .padding()
                }
            }
        }.background((/*@START_MENU_TOKEN@*/Color(red: 0.984, green: 0.984, blue: 0.989)/*@END_MENU_TOKEN@*/))
                        .preferredColorScheme(.light)
            .onAppear {
                networking.fetch(url: networking.urls[0])
            }
    }
}



struct ContentView_Previews: PreviewProvider {
    @State static var coordinator = Coordinator()
    static var previews: some View {
        NavigationStack {
            HotelChooseView()
                .environmentObject(coordinator)
        }
    }
}
