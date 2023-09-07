//
//  EmailTextFieldView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 07.09.2023.
//

import SwiftUI

struct EmailTextFieldView: View {
    
    @State private var email = ""
    @State private var isEmailValid = true
    let prevText: String
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Почта")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 5))
                        .cornerRadius(8)
                    Spacer()
                }
                VStack {
                    TextField(prevText, text: $email)
                        .font(.system(size: 14))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                        .background(isEmailValid ? Color.white : Color.red.opacity(0.2))
                        .cornerRadius(8)
                    Spacer()
                }
                //            .padding()
                .onChange(of: email) { newValue in
                    let emailPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
                    let isValid = NSPredicate(format: "SELF MATCHES %@", emailPattern).evaluate(with: email)
                    isEmailValid = isValid
                }
            }
        }.background(/*@START_MENU_TOKEN@*/Color(red: 0.984, green: 0.984, blue: 0.989)/*@END_MENU_TOKEN@*/)
            .frame(alignment: .leading)
            .cornerRadius(15)
            .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
    }
}

struct EmailTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        EmailTextFieldView(prevText: "Email")
    }
}
