//
//  Order.swift
//  Restaurant
//
//  Created by  Джон Костанов on 03/09/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import Foundation

struct Order {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
    
}
