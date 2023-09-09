//
//  Coordinator.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 06.09.2023.
//

import SwiftUI

@MainActor
final class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var page: MyPage = .home
    
    func goHome () {
        path.removeLast(path.count)
    }
    
    func goRoom () {
        path.append(MyPage.room)
    }
    
    func goBook () {
        path.append(MyPage.book)
    }
    
    func goFinal () {
        path.append(MyPage.final)
    }
    
    @ViewBuilder
    func getPage (_ page: MyPage) -> some View {
        switch page {
        case .home:
            HotelChooseView()
        case .room:
            RoomNumberView()
        case .book:
            BookingView()
        case .final:
            CompletedView()
        }
    }
    
}

enum MyPage: String, CaseIterable, Identifiable {
    case home, room, book, final
    
    var id: String {
        self.rawValue
    }
}
