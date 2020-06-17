//
//  ContentView.swift
//  NearMeApp
//
//  Created by Yasmin Cropanisi on 17/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
  
  private var locationManager = LocationManager()
  
  @State private var search: String = ""
  @State private var landmarks = [Landmark]()
  @State private var tapped: Bool = false
  
  var body: some View {
    ZStack(alignment: .top) {
      MapView(landmarks: self.landmarks)
      TextField("Seach", text: self.$search, onEditingChanged: { _ in }) {
        self.getNearByLandMarks()
      }.textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        .offset(y: 44)
      PlaceListView(landmarks: self.landmarks) {
        self.tapped.toggle()
      }.animation(.spring())
      .offset(y: calculateOffset())
    }
  }
  
  private func getNearByLandMarks() {
    guard let location = locationManager.location else {
      return
    }
    let request = MKLocalSearch.Request()
    request.naturalLanguageQuery = self.search
    request.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
    let search = MKLocalSearch(request: request)
    search.start { response, error in
      guard let response = response, error == nil else {
        return
      }
      let mapItems = response.mapItems
      self.landmarks = mapItems.map {
        Landmark(placemark: $0.placemark)
      }
    }
    
  }
  
  private func calculateOffset() -> CGFloat {
    if landmarks.count > 0  && !tapped {
      return UIScreen.main.bounds.size.height - UIScreen.main.bounds.size.height / 4
    }
    else if tapped {
      return 100
    } else {
      return UIScreen.main.bounds.height
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
