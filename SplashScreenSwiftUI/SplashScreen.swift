//
//  SplashScreen.swift
//  SplashScreenSwiftUI
//
//  Created by Bhushan Borse DXC on 24/04/24.
//

import SwiftUI

struct SplashScreen: View {
    @State private var scale = 0.7
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "scribble.variable")
                    .font(.system(size: 100))
                    .foregroundColor(.blue)
                    .padding()
                Text("Your app name here...")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundStyle(.orange)
            }.scaleEffect(scale)
                .onAppear{
                    withAnimation(.easeIn(duration: 0.7)) {
                        self.scale = 0.9
                    }
                }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreen(isActive: .constant(false))
}
