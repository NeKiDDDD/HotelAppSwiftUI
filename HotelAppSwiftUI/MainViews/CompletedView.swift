//
//  ComletedView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 05.09.2023.
//

import SwiftUI

struct CompletedView: View {
    var body: some View {
        VStack {
            Spacer()
            Section {
                CompletedViewPicture()
                Text(K.CompletedView.inWork)
                    .font(.system(size: 22))
                    .bold()
                Text(K.CompletedView.approvingOrder)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }.padding()
            Section {
                Spacer()
                Divider()
                NavigationBlueButton(buttonText: K.CompletedView.buttonName, destination: HotelChooseView())
            }
        }
    }
}

struct ComletedView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedView()
    }
}
