    //
    //  TouristDataView.swift
    //  HotelAppSwiftUI
    //
    //  Created by Nikita Kuznetsov on 08.09.2023.
    //

    import SwiftUI

    struct TouristDataView: View {
        
        @ObservedObject var checkDataModel: CheckDataModel
        
        var body: some View {
            VStack {
                TouristTextView(placeHolder: K.BookingView.Tourist.name, field: $checkDataModel.name)
                    .onChange(of: checkDataModel.name) { newValue in
//                        print(checkDataModel.isSignUpComplete)
                    }
                    .background(checkDataModel.isNameValid() ? Color.white : Color.red.opacity(0.2))
                    .cornerRadius(8)
                TouristTextView(placeHolder: K.BookingView.Tourist.surName, field: $checkDataModel.surName)
                    .onChange(of: checkDataModel.surName) { newValue in
//                        print(checkDataModel.isSignUpComplete)
                    }
                    .background(checkDataModel.isSurnameValid() ? Color.white : Color.red.opacity(0.2))
                    .cornerRadius(8)
                TouristTextView(placeHolder: K.BookingView.Tourist.birthDate, field: $checkDataModel.birthday)
                    .onChange(of: checkDataModel.birthday) { newValue in
//                        print(checkDataModel.isSignUpComplete)
                    }
                    .background(checkDataModel.isBirthdayValid() ? Color.white : Color.red.opacity(0.2))
                    .cornerRadius(8)
                TouristTextView(placeHolder: K.BookingView.Tourist.citizenship, field: $checkDataModel.citizenship)
                    .onChange(of: checkDataModel.citizenship) { newValue in
//                        print(checkDataModel.isSignUpComplete)
                    }
                    .background(checkDataModel.isCitizenshipValid() ? Color.white : Color.red.opacity(0.2))
                    .cornerRadius(8)
                TouristTextView(placeHolder: K.BookingView.Tourist.passportNumber, field: $checkDataModel.passport)
                    .onChange(of: checkDataModel.passport) { newValue in
//                        print(checkDataModel.isSignUpComplete)
                    }
                    .background(checkDataModel.isPassportValid() ? Color.white : Color.red.opacity(0.2))
                    .cornerRadius(8)
                TouristTextView(placeHolder: K.BookingView.Tourist.expiredDate, field: $checkDataModel.expired)
                    .onChange(of: checkDataModel.expired) { newValue in
//                        print(checkDataModel.isSignUpComplete)
                    }
                    .background(checkDataModel.isExpireDateValid() ? Color.white : Color.red.opacity(0.2))
                    .cornerRadius(8)
            }
        }
    }

//    struct TouristDataView_Previews: PreviewProvider {
//        static var previews: some View {
//            TouristDataView()
//        }
//    }
