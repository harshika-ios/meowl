//
//  SplashView.swift
//  Meowl
//
//  Created by Harshika Sharma on 24/06/26.
//

import SwiftUI

struct SplashView: View {

    @StateObject private var vm = SplashViewModel()

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
        }
    }
}

#Preview {
    SplashView()
}
