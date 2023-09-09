//
//  ClientInfoView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 04.09.2023.
//

import SwiftUI

//struct ClientInfoView: View {
//    
//    @Binding var isTouristFilled: Bool
//    let textData: String
//    @Binding var textField: String
//    var isFieldValid: Bool
//    
//    var body: some View {
//        VStack {
//            HStack {
//                Text(textData)
//                    .frame(alignment: .leading)
//                    .multilineTextAlignment(.leading)
//                    .font(.system(size: 14))
//                    .foregroundColor(.gray)
//                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
//                Spacer()
//            }
//            TextField(textData, text: $textField)
//                .font(.system(size: 14))
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
//                .background(isFieldValid ? Color.white : Color.red.opacity(0.2))
//                .cornerRadius(8)
//                .onChange(of: textField) { newValue in
//                    isTouristFilled = !newValue.isEmpty
//                }
//        }
//        .background(Color(red: 0.984, green: 0.984, blue: 0.989))
//        .frame(alignment: .leading)
//        .cornerRadius(15)
//    }
//}
//





//
//struct ClientInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        ClientInfoView(textData: "", textField:, state: true)
//    }
//}
