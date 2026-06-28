//
//  SplashFloatingCardsView.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//


import SwiftUI

struct SplashFloatingCardsView: View {

    let geo: GeometryProxy
    let isAnimating: Bool

    var body: some View {

        ZStack {

            Image("CatCard")
                .resizable()
                .scaledToFit()
                .frame(width: 145)
                .rotationEffect(.degrees(-12))
                .opacity(0.22)
                .position(
                    x: 85,
                    y: isAnimating ? 100 : 120
                )
                .animation(
                    .easeInOut(duration: 4)
                        .repeatForever(autoreverses: true),
                    value: isAnimating
                )

            Image("HamsterCard")
                .resizable()
                .scaledToFit()
                .frame(width: 90)
                .rotationEffect(.degrees(10))
                .opacity(0.18)
                .position(
                    x: isAnimating ? 40 : 28,
                    y: geo.size.height * 0.66
                )
                .animation(
                    .easeInOut(duration: 4.5)
                        .repeatForever(autoreverses: true),
                    value: isAnimating
                )

            Image("DogCard")
                .resizable()
                .scaledToFit()
                .frame(width: 170)
                .opacity(0.35)
                .position(
                    x: geo.size.width - 85,
                    y: isAnimating
                        ? geo.size.height * 0.70
                        : geo.size.height * 0.73
                )
                .animation(
                    .easeInOut(duration: 5)
                        .repeatForever(autoreverses: true),
                    value: isAnimating
                )
        }
    }
}
