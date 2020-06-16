//
//  ContentView.swift
//  SwiftUIForAllDevices
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  private var animals = AnimalService.fetchAll()
  var body: some View {
    
    NavigationView {
      List(self.animals, id:\.name) { animal in
        NavigationLink(destination: DetailView(animal: animal)) {
          HStack {
            Text(animal.image)
              .font(.custom("Arial", size: 100))
            Text(animal.name)
              .font(.title)
          }
        }
      }
      .navigationBarTitle("Animals")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
