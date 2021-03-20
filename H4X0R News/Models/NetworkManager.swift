//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by mac on 2021/03/20.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                        } catch {
                            print(error)
                        }
                        
                    }
                    
                }
            }
            task.resume()
        }
        
    }
    
}