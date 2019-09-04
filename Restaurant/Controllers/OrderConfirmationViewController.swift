//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by  Джон Костанов on 04/09/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    @IBOutlet var timeRemainingLabel: UILabel!
    
    var minutes: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timeRemainingLabel.text = "Thank you for your order! Your waiting time is approximately \(minutes!) minutes."
    }
    
}
