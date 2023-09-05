//
//  CompletedViewPicture.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 05.09.2023.
//

import SwiftUI

struct CompletedViewPicture: View {
    var body: some View {
        ZStack {
            Image("celebrate")
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
                .aspectRatio( contentMode: .fit)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.black, lineWidth: 1))
        }
    }
}

struct CompletedViewPicture_Previews: PreviewProvider {
    static var previews: some View {
        CompletedViewPicture()
    }
}
