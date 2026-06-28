//
//  SplashViewModel.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//

import Foundation
import SwiftUI
import Combine

final class SplashViewModel: ObservableObject {

    @Published var bounceLogo = false
    @Published var floatCards = false
    @Published var logoOpacity = 0
    @Published var animateDots = false

    func startAnimations() {

        bounceLogo = true
        floatCards = true
        animateDots = true

        withAnimation(.easeIn(duration: 1)) {
            logoOpacity = 1
        }
    }
}
