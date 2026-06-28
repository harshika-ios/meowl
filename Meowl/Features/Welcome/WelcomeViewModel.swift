//
//  WelcomeViewModel.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//


import SwiftUI
import Combine

final class WelcomeViewModel: ObservableObject {

    @Published var floatHero = false
    @Published var fadeContent = false

    func startAnimations() {

        floatHero = true

        withAnimation(.easeOut(duration: 0.8)) {
            fadeContent = true
        }
    }
}