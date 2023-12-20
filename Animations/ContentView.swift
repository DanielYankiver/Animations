//
//  ContentView.swift
//  Animations
//
//  Created by Daniel Yankiver on 12/19/23.
//

import SwiftUI

struct ContentView: View {
  @State private var dragAmount = CGSize.zero

  var body: some View {
    VStack {
      LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
        .frame(width: 300, height: 200)
        .clipShape(.rect(cornerRadius: 10))
        .offset(dragAmount)
        .gesture(
          DragGesture()
            .onChanged { dragAmount = $0.translation }
            .onEnded { _ in
              withAnimation(.bouncy) {
                dragAmount = .zero
              }
            }
        )
    }
  }
}

#Preview {
  ContentView()
}
