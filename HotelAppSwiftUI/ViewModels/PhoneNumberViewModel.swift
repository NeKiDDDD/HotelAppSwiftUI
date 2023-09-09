//
//  PhoneNumberViewModel.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 07.09.2023.
//

import SwiftUI

class PhoneNumberViewModel: ObservableObject {
    
    @Published var phoneNumber: String = ""
    @Published var isTextFieldActive: Bool = false
    @Published var isEditing: Bool = false
    
    func isValidPhoneNumber() -> Bool {
            return phoneNumber.count == 18
        }
}
