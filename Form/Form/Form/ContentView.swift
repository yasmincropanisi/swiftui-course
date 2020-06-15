//
//  ContentView.swift
//  Form
//
//  Created by Yasmin Cropanisi on 15/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var scheduled: Bool = false
  var body: some View {
    NavigationView {
      
      Form {
        Section(header: Text("Night shift automatically shift colors Night shift automatically shift colorsNight shift automatically shift colors Night shift automatically shift colors")
          .padding(5)
          .lineLimit(nil)) {
            Toggle(isOn: $scheduled) {
              Text("Scheduled")
            }
            HStack {
              VStack {
                Text("From")
                Text("To")
              }
              Spacer()
              NavigationLink(destination: Text("Scheduled Settings")) {
                VStack {
                  Text("Sunset").foregroundColor(Color.blue)
                  Text("Sunrise").foregroundColor(Color.blue)
                }
              }.fixedSize()
            }
        }
      }
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
