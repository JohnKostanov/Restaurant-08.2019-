//
//  AppDelegate.swift
//  Restaurant
//
//  Created by  Джон Костанов on 31/08/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var orderTabBarItem: UITabBarItem!
    
    @objc func updateOrderBadge() {
        let count = OrderManager.shared.order.menuItems.count
        orderTabBarItem.badgeValue = 0 < count ? "\(count)" : nil
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let tabBarController = window?.rootViewController as! UITabBarController
        orderTabBarItem = tabBarController.viewControllers![1].tabBarItem
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updateOrderBadge),
            name: OrderManager.orderUpdatedNotifacation,
            object: nil
        )
        
        return true
    }
}

