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
        Section(header: Text("")) {
          HStack {
            Text("Show Previews")
            Spacer()
            NavigationLink(destination: Text("")) {
              Text("Always").foregroundColor(Color.gray)
            }.fixedSize()
          }
        }
        Section(header: Text("Notification previews will be shown whether the iPhone is locked or unlocked").foregroundColor(Color.gray).padding(8).lineLimit(nil)) {
          NavigationLink(destination: Text("")) {
            Text("Siri Suggestions")
          }
        }
        
        Section(header: VStack(alignment: .leading) {
          Text("Choose which app can suggest shortcuts on the lock screen").lineLimit(nil).padding(1)
          Text("NOTIFICATION STYLE").padding(2)
        }) {
          
          ForEach(self.images, id: \.self) { index in
              Text("\(index)")
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
