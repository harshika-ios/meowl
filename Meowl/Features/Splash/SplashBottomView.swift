//
//  SplashBottomView.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//


import SwiftUI

struct SplashBottomView: View {

    var body: some View {

        VStack {

            Spacer()

            Capsule()
                .fill(.white.opacity(0.18))
                .overlay(
                    Capsule()
                        .stroke(.white.opacity(0.18), lineWidth: 1)
                )
                .frame(width: 260, height: 48)
                .overlay(
                    Text("FOR EVERY PET, EVERY STORY")
                        .font(.plusJakartaBold(size: 15))
                        .foregroundColor(.white)
                )

            Capsule()
                .fill(.white.opacity(0.25))
                .frame(width: 140, height: 6)
                .padding(.top, 22)
                .padding(.bottom, 18)
                .padding(.bottom, 24)
        }
    }
}
