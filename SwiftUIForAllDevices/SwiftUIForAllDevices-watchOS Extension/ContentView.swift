//
//  ContentView.swift
//  SwiftUIForAllDevices-watchOS Extension
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  private let animals = AnimalService.fetchAll()
    var body: some View {
      List {
        ForEach(self.animals, id: \.name) { animal in
          VStack(alignment: .center) {
            Text(animal.image)
              .font(.custom("Arial", size: 100))
          }.frame(minWidth: 0, maxWidth: .infinity)
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
