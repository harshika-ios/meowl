//
//  ContentView.swift
//  Meowl
//
//  Created by Harshika Sharma on 24/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            SplashView()
                .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    ContentView()
}

