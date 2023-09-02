//
//  StarView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 02.09.2023.
//

import SwiftUI

struct StarView: View {
    
    let rating: Int?
    let ratingName: String?
    
    var body: some View {
        HStack {
            Group {
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 0))
                
                if let rating = rating {
                    Text("\(rating)")
                        .bold()
                        .foregroundColor(.orange)
                } else {
                    Text("???")
                }
                
                if let ratingName = ratingName {
                    Text("\(ratingName)")
                        .bold()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                        .foregroundColor(.orange)
                } else {
                    Text("???")
                }
            }
        }.background(/*@START_MENU_TOKEN@*/Color(red: 1.0, green: 0.955, blue: 0.799)/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView(rating: 5, ratingName: "Превосходно")
    }
}
