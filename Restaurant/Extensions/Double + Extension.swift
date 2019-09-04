//
//  Double + Extension.swift
//  Restaurant
//
//  Created by  Джон Костанов on 04/09/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import Foundation

extension Double {
    var formattedHundres: String {
        return String(format: "$%.2f", self)
    }
}
