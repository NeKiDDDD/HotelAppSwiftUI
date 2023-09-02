//
//  ContentView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 01.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject  var networking = NetworkManager()
    
    var body: some View {
        NavigationView {
            ScrollView {
                Section {
                    VStack {
                        ZStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 350, height: 200)
                                    .foregroundColor(.black)
                                    .padding()
                            }
                        }.padding()
                    }
                }
                ZStack {
                    VStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.yellow)
//                                .frame(width: 70, height: 20 )
                            HStack {
                                Image(systemName: "star")
                                if let rating = networking.hotelData?.rating {
                                    Text("\(rating)")
                                        .bold()
                                } else {
                                    Text("???")
                                }
                                if let ratingName = networking.hotelData?.rating_name {
                                    Text("\(ratingName)")
                                        .bold()
                                } else {
                                    Text("???")
                                }
                                
                            }
                        }
                        
                        if let hotelName = networking.hotelData?.name {
                            Text("\(hotelName)")
                                .bold()
                        } else {
                            Text("???")
                        }
                        Button("Madinat Makadi, Safaga Road, Makadi Bay, Египет") {
                            
                        }
                        HStack {
                            HStack {
                                if let minimalPrice = networking.hotelData?.minimal_price {
                                    Text("от \(minimalPrice) Р")
                                        .bold()
                                } else {
                                    Text("от ??? Р")
                                }
                                
                                if let priceForIt = networking.hotelData?.price_for_it {
                                    Text(priceForIt).foregroundColor(.red)
                                } else {
                                    Text("")
                                }
                            }

                        }
                    }
                }
                .padding()
                VStack {
                    Text("Об отеле")
                        .multilineTextAlignment(.leading)
                        .bold()
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5)], spacing: 5) {
                            ForEach(networking.hotelData?.about_the_hotel?.peculiarities ?? [], id: \.self) { peculiarities in
                                CollectionViewCell(infoDataCell: peculiarities)
                                    .padding(.vertical, 5)
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                                    .lineLimit(1)
                            }
                        }
                        .padding()
                    }
                    Text(networking.hotelData?.about_the_hotel?.description ?? "")
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.gray)
                        Button("К выбору номера") {
                            
                        }
                        .foregroundColor(.white)
                            .padding()
                    }.padding()
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                    Button("К выбору номера") {
                        
                    }
                    .foregroundColor(.white)
                        .padding()
                }.padding()
            }.navigationTitle("Hotel")
        }.onAppear {
            networking.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
