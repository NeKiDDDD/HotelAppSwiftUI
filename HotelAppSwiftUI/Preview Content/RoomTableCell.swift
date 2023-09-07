//
//  RoomTableView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 03.09.2023.
//

import SwiftUI

struct RoomTableCell: View {
    
    let imageUrls: [URL?]
    let numberName: String?
    let peculiarities: [String?]
    let minimalPrice: Int?
    let priceForIt: String?
    let buttonText: String
    @EnvironmentObject var coordinator: Coordinator

    
    var body: some View {
        ZStack {
            VStack {
                Section {
                    PictureCarouselView(imageUrls: imageUrls)
                }
                Section {
                    VStack {
                        if let name = numberName {
                            Text("\(name)")
                                .bold()
                        } else {
                            Text("???")
                        }
                        VStack {
                            PeculiaritiesView(peculiarities: peculiarities)
                        }
                        VStack (alignment: .leading ) {
                            HStack {
                                DetailButton()
                                    .padding()
                                Spacer()
                            }.padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                        }
                        VStack {
                            PriceView(minimalPrice: minimalPrice, priceForIt: priceForIt)
                        }
                        
                        //                        .padding()
                    }
                }
                Section {
                    HStack {
                        Spacer()
                        Button(action: {
                            coordinator.goBook()
                        }) {
                            Text(K.RoomNumberView.buttonChoose)
                                    .foregroundColor(.white)
                                    .padding()
                        }.contentShape(Rectangle())
                        Spacer()
                    }.background(Color.blue)
                        .cornerRadius(20)
                        .padding()
                }
            }
            
        }.background(Color.white)
            .cornerRadius(25)
    }
}

struct RoomTableView_Previews: PreviewProvider {
    @State static var coordinator = Coordinator()
    static var previews: some View {
        RoomTableCell(imageUrls: [/*URL*/], numberName: "nomer", peculiarities: ["odin","dva"], minimalPrice: 122_233, priceForIt: "za to chto", buttonText: "Выбрать номер").environmentObject(coordinator)
    }
}
