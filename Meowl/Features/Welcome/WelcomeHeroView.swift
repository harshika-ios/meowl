//
//  WelcomeHeroView.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//


import SwiftUI

struct WelcomeHeroView: View {

    @ObservedObject var viewModel: WelcomeViewModel

    var body: some View {

        ZStack {

            Image("welcomeDogCat")
                .resizable()
                .scaledToFit()
                .frame(width: 330)
                .offset(y: viewModel.floatHero ? -8 : 8)
                .animation(
                    .easeInOut(duration: 3.5)
                        .repeatForever(autoreverses: true),
                    value: viewModel.floatHero
                )

            BadgeView(
                icon: "heart.fill",
                title: "Loved",
                backgroundColor: Color(hex: "#9C7BFF")
            )
            .offset(
                x: -125,
                y: 120 + (viewModel.floatHero ? -8 : 8)
            )
            .animation(
                .easeInOut(duration: 3.5)
                    .repeatForever(autoreverses: true),
                value: viewModel.floatHero
            )

            BadgeView(
                icon: "pawprint.fill",
                title: "Playful",
                backgroundColor: Color(hex: "#57C19D")
            )
            .offset(
                x: 125,
                y: -120 + (viewModel.floatHero ? -8 : 8)
            )
            .animation(
                .easeInOut(duration: 3.5)
                    .repeatForever(autoreverses: true),
                value: viewModel.floatHero
            )
        }
        .padding(.bottom, 40)
    }
}
//
//#Preview {
//    WelcomeHeroView(viewModel: .preview)
//}
