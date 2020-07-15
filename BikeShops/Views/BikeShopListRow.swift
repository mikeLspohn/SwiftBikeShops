//
//  BikeShopListRow.swift
//  BikeShops
//
//  Created by Michael Spohn on 7/14/20.
//  Copyright © 2020 Learning Mobile Apps. All rights reserved.
//

import SwiftUI

struct BikeShopListRow: View {
  var bikeShop: BikeShop
  
  var body: some View {
    NavigationLink(destination: BikeShopPage(bikeShop: bikeShop)) {
      HStack {
        Image(bikeShop.imageName)
          .resizable()
          .frame(width: 60, height: 60)
        
        VStack(alignment: .leading) {
          Text(bikeShop.title)
            .font(Font.system(size: 20, weight: .bold))
          Text(bikeShop.phoneNumber)
        }
      }
    }
  }
}

struct BikeShopListRow_Previews: PreviewProvider {
    static var previews: some View {
      BikeShopListRow(bikeShop: bikeShopsData[0])
    }
}
