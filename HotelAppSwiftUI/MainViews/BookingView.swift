//
//  BookingView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 03.09.2023.
//

import SwiftUI

struct BookingView: View {

    @State private var showAlert = false
    @State private var isPhoneNumberFilled = false
    @State private var isEmailFilled = false
    @ObservedObject  var networking = NetworkManager3()
    @ObservedObject private var checkDataModel = CheckDataModel()
    @ObservedObject private var touristViewModel = TouristsViewModel()
    @EnvironmentObject var coordinator: Coordinator
    
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
                    NumberTextFieldView(isPhoneNumberFilled: $isPhoneNumberFilled, example: "+7 (XXX) XXX-XX-XX")
                    EmailTextFieldView(isEmailFilled: $isEmailFilled, prevText: "example@mail.com")
                        .background(Color.white)
                            .cornerRadius(20)
                    Text(K.BookingView.disclamer).foregroundColor(.gray)
                        .font(.system(size: 14))
                        .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
                }
                Section {
                    
                    VStack {
                        ForEach(0..<touristViewModel.numberOfTourists, id: \.self) { index in
                            SimpleTouristsDataView(touristNumber: index + 1, isExpanded: $touristViewModel.isExpanded[index], toggleExpansion: touristViewModel.toggleExpansion, checkDataModel: checkDataModel)
                        }
                                .background(Color.white)
                            .cornerRadius(20)
                    }
                    HStack {
                        TouristAddView(viewModel: touristViewModel)
                                .background(Color.white)
                            .cornerRadius(20)
                    }
                    
                }
                Section {
                    PriceDataFullView(firstData: K.BookingView.PriceData.tour, secondData: networking.bookingData?.tourPriceString ?? "", thirdData: K.BookingView.PriceData.fuel, fourthData: networking.bookingData?.fuelChargeString ?? "", fifthData: K.BookingView.PriceData.service, sixthData: networking.bookingData?.serviceChargeString ?? "", seventhData: K.BookingView.PriceData.check, eighthData: networking.bookingData?.finalPrice ?? "")
                }.background(Color.white)
                    .cornerRadius(20)
                Section {
                    HStack {
                        Spacer()
                        Button(action: {
                            if isPhoneNumberFilled && isEmailFilled && checkDataModel.isSignUpComplete {
                                    coordinator.goFinal()
                                } else {
                                    showAlert = true
                                    print(isEmailFilled)
                                    print(checkDataModel.isSignUpComplete)
                                }
                        })
                        {
                            Text(("Оплатить " + String(networking.bookingData?.finalPrice ?? "")))
                                    .foregroundColor(.white)
                                    .padding()
                        }.contentShape(Rectangle())
                            .alert(isPresented: $showAlert) {
                                Alert(
                                    title: Text("Недостающие данные"),
                                    message: Text("Пожалуйста, заполните все необходимые поля перед продолжением."),
                                    dismissButton: .default(Text("OK"), action: {
                                        networking.fetch(url: networking.urls[2])
                                    })
                                )
                            }

                        Spacer()
                    }
                    .background(Color.blue)
                        .cornerRadius(20)
                        .padding()
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
    @State static var coordinator = Coordinator()
    static var previews: some View {
       NavigationStack {
            BookingView()
                .environmentObject(coordinator)
        }
    }
}


