//
//  MapView.swift
//  NearMeApp
//
//  Created by Yasmin Cropanisi on 17/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import SwiftUI


struct MapView: UIViewRepresentable {
  
  let landmarks: [Landmark]
  
  func makeCoordinator() -> MapCoordinator {
    Coordinator(self)
  }
  
  func makeUIView(context: Context) -> MKMapView {
    let map = MKMapView()
    map.showsUserLocation = true
    map.delegate = context.coordinator
    return map
  }
  
  func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
    updateAnnotations(from: uiView)
  }
  
  private func updateAnnotations(from mapView: MKMapView) {
    mapView.removeAnnotations(mapView.annotations)
    let annotations = landmarks.map(LandmarkAnnotation.init)
    mapView.addAnnotations(annotations)
  }
}
