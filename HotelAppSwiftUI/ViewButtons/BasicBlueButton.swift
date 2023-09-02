//
//  BasicBlueButton.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 02.09.2023.
//

import SwiftUI

struct BasicBlueButton: View {
    
    let buttonText: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue)
            Button(buttonText) {
                
            }
            .foregroundColor(.white)
            .padding()
        }.padding()
    }
}

struct BasicBlueButton_Previews: PreviewProvider {
    static var previews: some View {
        BasicBlueButton(buttonText: "Test")
    }
}
