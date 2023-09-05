//
//  Constants.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 05.09.2023.
//

import Foundation

struct K {
    
    struct HotelChooseView {
        static let aboutHotel = "Об отеле"
        static let buttonChoose = "К выбору номера"
        static let hotel = "Отель"
    }
    
    struct RoomNumberView {
        static let hotelName = "Лучший пятизвездочный отель в Хургаде, Египет"
        static let buttonChoose = "Выбрать номер"
        static let downloadingData = "Загрузка данных..."
    }
    
    struct BookingView {
        static let from = "Вылет из"
        static let city = "Страна, город"
        static let dates = "Даты"
        static let nights = "Кол-во ночей"
        static let hotel = "Отель"
        static let room = "Номер"
        static let food = "Питание"
        static let disclamer = "Эти данные никому не передаются. После оплаты мы вышлем чек на указанную вами почту."
        static let screenName = "Бронирование"
        
        struct PriceData {
            static let tour = "Тур"
            static let fuel = "Топливный сбор"
            static let service = "Сервисный сбор"
            static let check = "К оплате"
        }
        
        struct Tourist {
            static let Tourist = "Турист #"
            static let name = "Имя"
            static let surName = "Фамилия"
            static let birthDate = "Дата рождения"
            static let citizenship = "Гражданство"
            static let passportNumber = "Номер загранпаспорта"
            static let expiredDate = "Срок действия загранпаспорта"
        }
    }
        
        struct CompletedView {
            static let inWork = "Ваш заказ принят в работу"
            static let approvingOrder = "Подтверждение заказа #\(K.CompletedView.orderNumber) может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление."
            static let buttonName = "Супер"
            static let screenName = "Заказ оплачен"
            
           static var orderNumber: Int {
                Int.random(in: 1...999999)
            }
        }
        
    }
