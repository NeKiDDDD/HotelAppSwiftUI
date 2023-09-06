//
//  ClientInfoView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 04.09.2023.
//

import SwiftUI

struct ClientInfoView: View {
    
    let textData: String
    var textField: String
    @State private var name = ""
    
    var body: some View {
            VStack {
                HStack {
                    Text(textData)
                        .frame(alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
                    Spacer()
                }
                TextField(textField, text: $name)
                    .foregroundColor(.black)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 0))
            }
            .background(/*@START_MENU_TOKEN@*/Color(red: 0.984, green: 0.984, blue: 0.989)/*@END_MENU_TOKEN@*/)
            .frame(alignment: .leading)
            .cornerRadius(15)
        }
    }


struct ClientInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ClientInfoView(textData: "Nomer", textField: "")
    }
}
