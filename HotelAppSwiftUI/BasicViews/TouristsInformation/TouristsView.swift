//
//  TouristsView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 05.09.2023.
//

import SwiftUI

struct TouristsView: View {
    
    @State private var isExpanded = false
    @State private var selected = -1
    let tourist = ["tourist one", "tourist 2"]

    var body: some View {
        List(0..<tourist.count) { item in
            DisclosureGroup(
                isExpanded: $isExpanded,
                content: {
                    List (tourist, id: \.self)  { item in
                        Text("item")
                    }
                },
                label: {
                    Text("Tap to Expand")
                }
            )
        }.listStyle(.insetGrouped)
    }
}
struct TouristsView_Previews: PreviewProvider {
    static var previews: some View {
        TouristsView()
    }
}


