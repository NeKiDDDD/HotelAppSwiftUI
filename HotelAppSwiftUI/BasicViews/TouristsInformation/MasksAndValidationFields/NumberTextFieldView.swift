//
//  NumberTextFieldView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 07.09.2023.
//
//
import SwiftUI

struct NumberTextFieldView: View {
 
    @Binding var isPhoneNumberFilled: Bool
    @State private var selectedCountry = "Russia"
    @ObservedObject var modelView = PhoneNumberViewModel()
    let example: String
    
    func maskFormat(with mask: String, phone: String) -> String {
        let numbers = phone.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
        var result = ""
        var index = numbers.startIndex
        var maskIndex = mask.startIndex
        
        while index < numbers.endIndex && maskIndex < mask.endIndex {
            let maskChar = mask[maskIndex]
            let numberChar = numbers[index]
            
            if maskChar == "X" {
                result.append(numberChar)
                index = numbers.index(after: index)
            } else {
                result.append(maskChar)
            }
            
            maskIndex = mask.index(after: maskIndex)
        }
        
        return result
    }
    
    var countries: [String] {
        Array(phoneNumberFormats().keys).sorted()
    }
    
    var body: some View {
        VStack {
            HStack {
                            Text("Номер телефона")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                                .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 5))
                                .cornerRadius(8)
                            Spacer()
                        }
            HStack {
                TextField(example, text: $modelView.phoneNumber, onEditingChanged: { begin in })
                    .font(.system(size: 14))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                    .background(modelView.isValidPhoneNumber() ? Color.white : Color.red.opacity(0.2))
                    .cornerRadius(8)
                    .onChange(of: modelView.phoneNumber) { newValue in
                        modelView.phoneNumber = maskFormat(with: phoneNumberFormats()[selectedCountry]!.format, phone: newValue)
                        
                        if modelView.phoneNumber.filter({ $0.isNumber }).count <= (phoneNumberFormats()[selectedCountry]!.leadingDigits.filter({ $0.isNumber }).count) {
                            let regex = try? NSRegularExpression(pattern: "[^0-9]+")
                            let matches = regex?.matches(in: newValue, options: [], range: NSRange(location: 0, length: newValue.count))
                            let count = matches?.count ?? 0
                            
                            if count != 0 {
                                modelView.phoneNumber = phoneNumberFormats()[selectedCountry]!.leadingDigits
                            } else {
                                modelView.phoneNumber = phoneNumberFormats()[selectedCountry]!.leadingDigits + newValue
                            }
                            isPhoneNumberFilled = !modelView.phoneNumber.isEmpty
                        }
                }
            }
//            .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
        }.padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
//        .padding()
    }
}

//struct NumberTextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        NumberTextFieldView(isPhoneNumberFilled: , example: "+7 (XXX) XXX-XX-XX")
//    }
//}


struct PhoneNumberFormat {
    let leadingDigits: String
    let format: String
    let textFieldMaxChar: Int
}

func phoneNumberFormats() -> [String: PhoneNumberFormat] {
    let formats = [
        
        "Russia": PhoneNumberFormat(leadingDigits: "+7", format: "+X (XXX) XXX-XX-XX", textFieldMaxChar: 11)
        
    ]
return formats
    }



