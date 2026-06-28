//
//  SplashBackgroundView.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//


import Foundation
import SwiftUI


struct SplashBackgroundView: View {

    var body: some View {

        ZStack {

            LinearGradient(
                colors: [
                    Color(hex: "#F96C9B"),
                    Color(hex: "#9E72FF")
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )

            Image("AmbientBackground")
                .resizable()
                .scaledToFill()

        }
        .ignoresSafeArea()
    }
}
