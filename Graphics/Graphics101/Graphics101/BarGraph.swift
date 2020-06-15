//
//  BarGraph.swift
//  Graphics101
//
//  Created by Yasmin Cropanisi on 15/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import SwiftUI

struct BarGraph: View {
  
  let reports: [Report]
  
  var body: some View {
    VStack {
      HStack(alignment: .lastTextBaseline) {
        
        ForEach(reports, id: \.year) { report in
          BarView(report: report)
        }
      }
    }
  }
}


struct BarView: View {
  let report: Report
  @State private var showGraph: Bool = false
  var body: some View {
    let value = report.revenue / 500
    let yValue = Swift.min(value * 20, 500)
    
    return VStack {
      Text(String(format: "$%.2f", report.revenue))
      Rectangle()
        .fill(Color.purple)
        .frame(width: 100, height: showGraph ? CGFloat(yValue) : 0.0)
        .onAppear {
          withAnimation(.easeIn) {
            self.showGraph.toggle()
          }
      }
      Text(report.year)

    }
  }
}
