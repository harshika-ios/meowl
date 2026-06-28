//
//  SplashCenterContentView.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//


import SwiftUI

struct SplashCenterContentView: View {

    let bounceLogo: Bool
    let logoOpacity: Int

    var body: some View {

        VStack {

            Spacer()

            Image("AppIconContainer")
                .resizable()
                .frame(width: 128, height: 128)
                .scaleEffect(bounceLogo ? 1.05 : 0.95)
                .animation(
                    .easeInOut(duration: 2)
                        .repeatForever(autoreverses: true),
                    value: bounceLogo
                )

            Text("Meowl")
                .font(.plusJakartaBold(size: 24))
                .foregroundStyle(.white)
                .opacity(Double(logoOpacity))
                .animation(.easeIn(duration: 1), value: logoOpacity)

            MeowlLottieView(animation: .loader)
                .frame(width: 180, height: 80)

            Spacer()
        }
    }
}
