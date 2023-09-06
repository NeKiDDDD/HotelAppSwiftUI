//
//  ComletedView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 05.09.2023.
//

import SwiftUI

struct CompletedView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    
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
                HStack {
                    Spacer()
                    Button(action: {
                        coordinator.goHome()
                    }) {
                        Text(K.CompletedView.buttonName)
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
}

struct ComletedView_Previews: PreviewProvider {
    @State static var coordinator = Coordinator()
    static var previews: some View {
        NavigationStack {
            CompletedView()
                .environmentObject(coordinator)
        }
    }
}
