//
//  TouristAddView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 06.09.2023.
//

import SwiftUI

struct TouristAddView: View {
    
    @ObservedObject var viewModel: TouristsViewModel
    
    var body: some View {
        HStack {
            Text("Добавить туриста")
                .bold()
                .font(.system(size: 20))
            Spacer()
            Button(action: {
                viewModel.addTourist()
            }) {
                ZStack {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5 ))
                }.background(Color.blue)
                    .cornerRadius(5)
            }
        }.padding()
    }
}

struct TouristAddView_Previews: PreviewProvider {
    static var previews: some View {
        TouristAddView(viewModel: TouristsViewModel())
    }
}
