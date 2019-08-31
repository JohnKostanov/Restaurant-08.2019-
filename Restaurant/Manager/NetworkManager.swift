//
//  NetworkManager.swift
//  Restaurant
//
//  Created by  Джон Костанов on 31/08/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import Foundation

class NetworkManager {
    let initialURL = URL(string: "http://server.getoutfit.ru:8090")!
    
    func getCategories(completion: @escaping ([String]?, Error?) -> Void) {
         let url = initialURL.appendingPathComponent("categories")
        let task = URLSession.shared.dataTask(with: url) {data, _, error in
            guard let data = data else {
                completion(nil, error)
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let decodedData = try decoder.decode(Categories.self, from: data)
                completion(decodedData.categories, nil)
            } catch let error {
                completion(nil, error)
            }
            
        }
        task.resume()
    }
}
