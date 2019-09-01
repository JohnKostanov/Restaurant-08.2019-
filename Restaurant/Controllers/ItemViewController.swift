//
//  ItemViewController.swift
//  Restaurant
//
//  Created by  Джон Костанов on 01/09/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var detailTextLabel: UILabel!
    @IBOutlet var addToOrderButton: UIButton!
    
    var menuItem: MenuItem!
    
    @IBAction func orderButtonTapped(_ sender: UIButton) {
    }
    
}
