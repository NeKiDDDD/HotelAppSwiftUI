//
//  TouristTextField.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 08.09.2023.
//

import Foundation
import SwiftUI

struct TouristTextView: View {
    var placeHolder: String
    @Binding var field: String
    var isSecure:Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField(placeHolder, text: $field).autocapitalization(.none)
                    .font(.system(size: 14))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            }
        }
    }
}

