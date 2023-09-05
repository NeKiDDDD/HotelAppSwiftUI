//
//  BasicBlueButton.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 02.09.2023.
//

import SwiftUI

struct NavigationBlueButton<Destination: View>: View {
    let buttonText: String
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Spacer()
                Button(action: {
                }) {
                        Text(buttonText)
                            .foregroundColor(.white)
                            .padding()
                }.contentShape(Rectangle())
                Spacer()
            }.background(Color.blue)
                .cornerRadius(20)
                .padding()
        }
    }
}

struct BasicBlueButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBlueButton(buttonText: "Test", destination: RoomNumberView())
    }
}
