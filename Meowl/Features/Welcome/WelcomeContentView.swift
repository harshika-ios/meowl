//
//  WelcomeContentView.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//


import SwiftUI

struct WelcomeContentView: View {

    @ObservedObject var viewModel: WelcomeViewModel

    var body: some View {

        VStack(spacing: 0) {

            HStack(spacing: 10) {

                Image(systemName: "pawprint.fill")
                    .font(.system(size: 22))

                Text("Meowl")
                    .font(.plusJakartaBold(size: 24))
            }
            .foregroundColor(Color.meowlPrimary)
            .opacity(viewModel.fadeContent ? 1 : 0)
            .offset(y: viewModel.fadeContent ? 0 : 15)

            Text("Welcome to Meowl")
                .font(.plusJakartaBold(size: 24))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.top, 24)
                .opacity(viewModel.fadeContent ? 1 : 0)
                .offset(y: viewModel.fadeContent ? 0 : 20)

            Text("The wholesome community for pet lovers.")
                .font(.beVietnamProRegular(size: 18))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .padding(.top, 12)
                .opacity(viewModel.fadeContent ? 1 : 0)
                .offset(y: viewModel.fadeContent ? 0 : 20)
        }
    }
}
//
//#Preview {
//    WelcomeContentView(viewModel: .preview)
//}
