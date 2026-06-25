//
//  MeowlLottieView.swift
//  Meowl
//
//  Created by Harshika Sharma on 25/06/26.
//

import SwiftUI
import Lottie

struct MeowlLottieView: UIViewRepresentable {

    let animation: MeowlAnimation

    var loopMode: LottieLoopMode = .loop
    var contentMode: UIView.ContentMode = .scaleAspectFit
    var speed: CGFloat = 1

    func makeUIView(context: Context) -> UIView {

        let view = UIView(frame: .zero)

        let animationView = LottieAnimationView(
            name: animation.rawValue
        )

        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.loopMode = loopMode
        animationView.contentMode = contentMode
        animationView.animationSpeed = speed

        animationView.play()

        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            animationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            animationView.topAnchor.constraint(equalTo: view.topAnchor),
            animationView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {

    }
}
