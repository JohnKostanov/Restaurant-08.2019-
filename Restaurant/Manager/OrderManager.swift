//
//  OrderManager.swift
//  Restaurant
//
//  Created by  Джон Костанов on 03/09/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import Foundation

class OrderManager {
    static let orderUpdatedNotifacation = Notification.Name("OrderManager.orderUpdated")
    
    static var shared = OrderManager()
    
    private init() {}
    
    var order = Order() {
        didSet {
            NotificationCenter.default.post(name: OrderManager.orderUpdatedNotifacation, object: nil)
        }
    }
}
