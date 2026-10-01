//
//  SplashView.swift
//  Meowl
//
//  Created by Harshika Sharma on 24/06/26.
//

import SwiftUI

struct SplashView: View {

    @StateObject private var vm = SplashViewModel()
    @State private var showWelcome = false

    var body: some View {
        GeometryReader { geo in

            ZStack {

                SplashBackgroundView()

                SplashFloatingCardsView(
                    geo: geo,
                    isAnimating: vm.floatCards
                )

                SplashCenterContentView(
                    bounceLogo: vm.bounceLogo,
                    logoOpacity: vm.logoOpacity
                )

                SplashBottomView()

            }
            .onAppear {
                vm.startAnimations()
            }
            .task {
                try? await Task.sleep(for: .seconds(3.5))
                guard !Task.isCancelled else { return }
                showWelcome = true
            }
            .navigationDestination(isPresented: $showWelcome) {
                WelcomeView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    SplashView()
}
