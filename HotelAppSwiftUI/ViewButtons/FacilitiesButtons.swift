//
//  FacilitiesButtons.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 02.09.2023.
//

import SwiftUI

struct FacilitiesButtons: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.984, green: 0.984, blue: 0.989)/*@END_MENU_TOKEN@*/)
            VStack {
                Button(action: {
                }) {
                    HStack {
                        Image(systemName: "face.smiling")
                        VStack {
                            Text("Удобства")
                                .bold()
                                .frame(width: 200, alignment: .leading)
                            Text("Самое необходимое").frame(width: 200, alignment: .leading)
                        }
                        Spacer()
                        Image(systemName: "arrowtriangle.right")
                    }
                }
                .foregroundColor(.gray)
                .padding()
                Divider()
                Button(action: {
              }) {
                    HStack {
                        Image(systemName: "face.smiling")
                        VStack {
                            Text("Что включено")
                                .bold()
                                .frame(width: 200, alignment: .leading)
                            Text("Самое необходимое").frame(width: 200, alignment: .leading)
                        }
                        Spacer()
                        Image(systemName: "arrowtriangle.right")
                    }
                }
                .foregroundColor(.gray)
                .padding()
                Divider()
                
                Button(action: {
                }) {
                    HStack {
                        Image(systemName: "face.smiling")
                        VStack {
                            Text("Что не включено")
                                .bold()
                                .frame(width: 200, alignment: .leading)
                            Text("Самое необходимое").frame(width: 200, alignment: .leading)
                        }
                        Spacer()
                        Image(systemName: "arrowtriangle.right")
                    }
                }
                .foregroundColor(.gray)
                .padding()
            }
        }
    }
}


struct FacilitiesButtons_Previews: PreviewProvider {
    static var previews: some View {
        FacilitiesButtons()
    }
}


