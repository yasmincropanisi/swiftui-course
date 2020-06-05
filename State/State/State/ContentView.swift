//
//  ContentView.swift
//  State
//
//  Created by Yasmin Cropanisi on 04/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State var tasks = [Task]()

  private func addTask() {
    self.tasks.append(Task(name: "Brush hair"))
  }
  
  var body: some View {
    List {
      Button(action: addTask) {
        Text("Add Task")
      }
      ForEach(tasks) { task in
        Text(task.name)
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
