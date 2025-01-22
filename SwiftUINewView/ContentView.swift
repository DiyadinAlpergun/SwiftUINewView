//
//  ContentView.swift
//  SwiftUINewView
//
//  Created by neodiyadin on 29.11.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scale: CGFloat = 1.0
    @State private var big = false
    
    var body: some View {
        VStack {
            Text("Tap me!")
                .scaleEffect(scale)
                .onTapGesture {
                    withAnimation(.bouncy(duration: 1)) {
                        if big {
                            scale = 1
                        } else {
                            scale = 4
                        }
                        big.toggle()
                    }
                    
                    
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
