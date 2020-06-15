//
//  Report.swift
//  Graphics101
//
//  Created by Yasmin Cropanisi on 15/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

struct Report: Hashable {
  
  let year: String
  let revenue: Double
}

extension Report {
  static func all() -> [Report] {
    return [
      Report(year: "2001", revenue: 2500),
      Report(year: "2002", revenue: 4500),
      Report(year: "2003", revenue: 1000),
    ]
  }
}
