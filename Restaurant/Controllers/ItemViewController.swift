//
//  ItemViewController.swift
//  Restaurant
//
//  Created by  Джон Костанов on 01/09/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var detailTextLabel: UILabel!
    @IBOutlet var addToOrderButton: UIButton!
    
    // MARK: - Stored Properties
    var menuItem: MenuItem!
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addToOrderButton.layer.cornerRadius = 5
        updateUI()
    }
    
    // MARK: - UI Methods
    func updateUI() {
        navigationItem.title = menuItem.name
        imageView.image = menuItem.image
        priceLabel.text = menuItem.price.formattedHundres
        detailTextLabel.text = menuItem.detailText
        
    }
    
    // MARK: - Actions
    @IBAction func orderButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 3, y: 3)
            self.addToOrderButton.transform = CGAffineTransform.identity
        }
        OrderManager.shared.order.menuItems.append(menuItem)
        
    }
    
}
