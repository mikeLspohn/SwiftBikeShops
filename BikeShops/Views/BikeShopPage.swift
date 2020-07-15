//
//  BikeShop.swift
//  BikeShops
//
//  Created by Michael Spohn on 7/14/20.
//  Copyright © 2020 Learning Mobile Apps. All rights reserved.
//

import SwiftUI

struct BikeShopPage: View {
  var bikeShop: BikeShop
  
  var body: some View {
    VStack {
      Text(bikeShop.title)
        .font(.title)
      Text(bikeShop.phoneNumber)
      Text(bikeShop.address ?? "No Address")
    }
      .padding([.leading, .trailing], 10)
      .frame(minWidth: 0, maxWidth: .infinity)
  }
}

struct BikeShopPage_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      BikeShopPage(bikeShop: bikeShopsData[0])
      BikeShopPage(bikeShop: bikeShopsData[1])
    }
  }
}
