//
//  MainPage.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 06.09.2023.
//

import SwiftUI

struct MainPage: View {
    
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        NavigationView {
            NavigationStack (path: $coordinator.path) {
                coordinator.getPage(MyPage.home)
                    .navigationDestination(for: MyPage.self) { page in
                        coordinator.getPage(page)
                    }
            }.environmentObject(coordinator)
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    @State static var coordinator = Coordinator()
    static var previews: some View {
        MainPage()
            .environmentObject(coordinator)
    }
}
