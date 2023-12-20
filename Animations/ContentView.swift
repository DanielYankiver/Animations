//
//  ContentView.swift
//  Animations
//
//  Created by Daniel Yankiver on 12/19/23.
//

import SwiftUI

struct ContentView: View {
  @State private var animationAmount = 0.0

  var body: some View {
    VStack {
      Button("Tap me") {
        withAnimation(.spring(duration: 1, bounce: 0.5)) {
          animationAmount += 360
        }
      }
      .padding(40)
      .background(.red)
      .foregroundStyle(.white)
      .clipShape(.circle)
      .rotation3DEffect(.degrees(animationAmount) ,axis: (x: 0.0, y: 1.0, z: 0.0)
      )
    }
  }
}

#Preview {
  ContentView()
}
