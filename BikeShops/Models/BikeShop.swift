//
//  BikeShop.swift
//  BikeShops
//
//  Created by Michael Spohn on 7/14/20.
//  Copyright © 2020 Learning Mobile Apps. All rights reserved.
//

import Foundation

struct BikeShop: Decodable, Identifiable {
  let title: String
  let id: Int
  let phoneNumber: String
  let imageName: String
  let address: String?
}
