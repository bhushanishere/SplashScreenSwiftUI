//
//  ContentView.swift
//  SplashScreenSwiftUI
//
//  Created by Bhushan Borse DXC on 24/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSplash: Bool = false
    
    var body: some View {
        ZStack {
            if self.showSplash {
                Text("Onboarding view")
            } else {
                SplashScreen(isActive: $showSplash)
            }
        }
    }
}

#Preview {
    ContentView()
}
