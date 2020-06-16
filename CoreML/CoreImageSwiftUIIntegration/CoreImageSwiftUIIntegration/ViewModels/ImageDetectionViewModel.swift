//
//  ImageDetectionViewModel.swift
//  CoreImageSwiftUIIntegration
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ImageDetectionViewModel: ObservableObject {
  
  var name: String = ""
  var manager: ImageDetectionManager
 //it will notify the view
 @Published var predictionLabel: String = ""
  
  init(manager: ImageDetectionManager) {
    self.manager = manager
  }
  
  func detect(_ name: String) {
    
    let sourceImage = UIImage(named: name)
    guard let resizedImage = sourceImage?.resizeImage(targetSize: CGSize(width: 224, height: 224)) else {
      fatalError("Unable to resize the image!")
    }
    if let label = manager.detect(resizedImage) {
      predictionLabel = label
    }
  }
}
