//
//  DetailView.swift
//  SwiftUIForAllDevices
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct DetailView: View {
  let animal: Animal
  var body: some View {
    VStack {
      Text(animal.image)
        .font(.custom("Arial", size: 100))
      Text(animal.name)
      Text(animal.description)
        .font(.body)
    }
  }
}


