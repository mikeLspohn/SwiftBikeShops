//
//  BikeShopsList.swift
//  BikeShops
//
//  Created by Michael Spohn on 7/14/20.
//  Copyright © 2020 Learning Mobile Apps. All rights reserved.
//

import SwiftUI

struct BikeShopsList: View {
  var body: some View {
    NavigationView {
      List(bikeShopsData, id: \.id) { shop in
        BikeShopListRow(bikeShop: shop)
      }
      .navigationBarTitle(Text("Bike Shops"))
    }
  }
}

struct BikeShopsList_Previews: PreviewProvider {
    static var previews: some View {
        BikeShopsList()
    }
}
