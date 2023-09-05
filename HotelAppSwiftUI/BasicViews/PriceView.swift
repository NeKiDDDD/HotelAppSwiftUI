//
//  PriceView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 02.09.2023.
//

import SwiftUI

struct PriceView: View {
    
    let minimalPrice: Int?
    let priceForIt: String?
    
    var body: some View {
        HStack {
            if let minimalPrice = minimalPrice {
                Text("от \(minimalPrice) Р")
                    .bold()
                    .font(.system(size: 18))
            } else {
                Text("от ??? Р")
            }
            
            if let priceForIt = priceForIt {
                Text(priceForIt)
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                    .baselineOffset(-4)
            } else {
                Text("")
            }
        }
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(minimalPrice: 130_000 , priceForIt: "За тур с перелетом")
    }
}
