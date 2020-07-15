//
//  FetchBikeShops.swift
//  BikeShops
//
//  Created by Michael Spohn on 7/14/20.
//  Copyright © 2020 Learning Mobile Apps. All rights reserved.
//

import Foundation

var bikeShopsData: [BikeShop] = FetchBikeShops().shops

class FetchBikeShops: ObservableObject {
  @Published var shops = [BikeShop]()
  
  init() {
    shops = loadJSON("bikeShops.json")
  }
  
  func loadJSON<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
  }
}
