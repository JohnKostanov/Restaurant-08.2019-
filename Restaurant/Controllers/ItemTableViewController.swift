//
//  ItemTableViewController.swift
//  Restaurant
//
//  Created by  Джон Костанов on 01/09/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class ItemTableViewController: UITableViewController {
    
    //MARK: - Properties
    let networkManager = NetworkManager()
    var category: String!
    var menuItems = [MenuItems]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = category.localizedCapitalized
        
        networkManager.getMenuItems(for: category) { menuItems, error in
            guard let menuItems = menuItems else {
                print(#line, #function, "ERROR: ", terminator: "")
                if let error = error {
                    print(error)
                } else {
                    print("Can't get menu items for category \(self.category ?? "nil")")
                }
                
                return
            }
            print(#line, #function, menuItems)
        }
    }
}
