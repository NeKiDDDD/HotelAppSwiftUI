//
//  SimpleTouristsDataView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 06.09.2023.
//

import SwiftUI

struct SimpleTouristsDataView: View {
    
    let touristNumber: Int
    @Binding var isExpanded: Bool
    let toggleExpansion: (Int) -> Void
    let checkDataModel: CheckDataModel?
    
    var body: some View {
        VStack {
            HStack {
                Text("Турист \(touristNumber)")
                    .bold()
                    .font(.system(size: 20))
                Spacer()
                Button(action: {
                    withAnimation {
                        toggleExpansion(touristNumber - 1)
                    }
                }) {
                    ZStack {
                            Image(systemName: isExpanded ? "chevron.compact.up" : "chevron.compact.down")
                                .foregroundColor(.white)
                                .bold()
                                .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5 ))
                        
                    }.background(Color.blue)
                        .cornerRadius(5)
                }
            }
            
            if isExpanded {
                HStack {
                    TouristDataView(checkDataModel: checkDataModel ?? CheckDataModel())
                }
            }
        }.padding()
        
    }
}

//struct SimpleTouristsDataView_Previews: PreviewProvider {
//    static var previews: some View {
//        SimpleTouristsDataView(touristNumber: 2, isExpanded: [true], toggleExpansion: 2)
//    }
//}
