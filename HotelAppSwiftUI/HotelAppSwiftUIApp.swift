//
//  HotelAppSwiftUIApp.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 01.09.2023.
//

import SwiftUI

@main
struct HotelAppSwiftUIApp: App {
    
    @StateObject var coordinator = Coordinator()
    
    var body: some Scene {
        WindowGroup {
            MainPage()
                .environmentObject(coordinator)
        }
    }
}
