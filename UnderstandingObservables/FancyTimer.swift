//
//  FancyTimer.swift
//  UnderstandingObservables
//
//  Created by Yasmin Cropanisi on 04/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: ObservableObject {
  @Published var value: Int = 0
  
  init() {
    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
      self.value += 1
    }
  }
}
