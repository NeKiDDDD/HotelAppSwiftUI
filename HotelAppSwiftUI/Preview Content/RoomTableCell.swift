//
//  RoomTableView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 03.09.2023.
//

import SwiftUI

struct RoomTableCell<Destination: View>: View {
    
    let imageUrls: [URL?]
    let numberName: String?
    let peculiarities: [String?]
    let minimalPrice: Int?
    let priceForIt: String?
    let buttonText: String
    let destination: Destination
    
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
                            DetailButton()
                        }.offset(x: -90)
                        VStack {
                            PriceView(minimalPrice: minimalPrice, priceForIt: priceForIt)
                        }
                        
                        //                        .padding()
                    }
                }
                Section {
                    VStack {
                        NavigationBlueButton(buttonText: buttonText, destination: destination)
                    }
                }
            }
            
        }.background(Color.white)
            .cornerRadius(25)
    }
}

struct RoomTableView_Previews: PreviewProvider {
    static var previews: some View {
        RoomTableCell(imageUrls: [/*URL*/], numberName: "nomer", peculiarities: ["odin","dva"], minimalPrice: 122_233, priceForIt: "za to chto", buttonText: "Выбрать номер",destination: RoomNumberView())
    }
}
