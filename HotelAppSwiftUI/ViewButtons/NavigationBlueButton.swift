//
//  BasicBlueButton.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 02.09.2023.
//

import SwiftUI

struct NavigationBlueButton: View {
    
    @EnvironmentObject var coordinator: Coordinator
    let buttonText: String
    
    var body: some View {
            HStack {
                Spacer()
                Button(action: {
                    coordinator.goHome()
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

struct BasicBlueButton_Previews: PreviewProvider {
    @State static var coordiantor = Coordinator()
    static var previews: some View {
        NavigationStack {
            NavigationBlueButton(buttonText: "Test")
                .environmentObject(coordiantor)
        }
    }
}
