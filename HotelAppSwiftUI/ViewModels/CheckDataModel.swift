//
//  CheckDataModel.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 08.09.2023.
//

import Foundation
import SwiftUI

class CheckDataModel: ObservableObject {
    
    @Published var name = ""
    @Published var surName = ""
    @Published var birthday = ""
    @Published var citizenship = ""
    @Published var passport = ""
    @Published var expired = ""
    
    func isNameValid() -> Bool {
        return name.count >= 3
    }
    
    func isSurnameValid() -> Bool {
        return surName.count >= 3
    }
    
    func isBirthdayValid() -> Bool {
        return birthday.count >= 3
    }
    
    func isCitizenshipValid() -> Bool {
        return citizenship.count >= 3
    }
    
    func isPassportValid() -> Bool {
        return passport.count >= 3
    }
    
    func isExpireDateValid() -> Bool {
        return expired.count >= 3
    }
    
    var isSignUpComplete: Bool {
        if !isNameValid() ||
            !isSurnameValid() ||
            !isBirthdayValid() ||
            !isCitizenshipValid() ||
            !isPassportValid() ||
            !isExpireDateValid() {
            return false
        } else {
            return true
        }
    }
}

