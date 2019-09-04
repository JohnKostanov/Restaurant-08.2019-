//
//  PreperationTime.swift
//  Restaurant
//
//  Created by  Джон Костанов on 04/09/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import Foundation

struct PreparationTime: Decodable {
    let prepTime: Int
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
