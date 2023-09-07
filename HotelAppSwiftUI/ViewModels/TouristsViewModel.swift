//
//  TouristsViewModel.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 06.09.2023.
//

import Foundation

class TouristsViewModel: ObservableObject {
    
    @Published var numberOfTourists: Int = 1
    @Published var isExpanded: [Bool] = []
    
    init() {
        for _ in 0..<numberOfTourists {
            isExpanded.append(false)
        }
    }
    
    func toggleExpansion(for index: Int) {
        isExpanded[index].toggle()
        
    }
    
    func addTourist() {
        numberOfTourists += 1
        isExpanded.append(false)
    }
    
}
