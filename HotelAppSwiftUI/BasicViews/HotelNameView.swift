//
//  HotelNameView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 02.09.2023.
//

import SwiftUI

struct HotelNameView: View {
    
    let hotelName: String?
    
    var body: some View {
        VStack {
            if let hotelName = hotelName {
                Text("\(hotelName)")
                    .multilineTextAlignment(.center)
                    .bold()
                    .font(.system(size: 20))

            } else {
                Text("???")
            }
            Button("Madinat Makadi, Safaga Road, Makadi Bay, Египет") {
                
            }
            .multilineTextAlignment(.center)
            .lineLimit(1)
            .font(.system(size: 15))
            
        }
    }
}

struct HotelNameView_Previews: PreviewProvider {
    static var previews: some View {
        HotelNameView(hotelName: "Лучший пятизвездочный отель в Хургаде, Египет")
    }
}
