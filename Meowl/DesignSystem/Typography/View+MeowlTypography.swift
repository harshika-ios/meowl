//
//  View+MeowlTypography.swift
//  Meowl
//
//  Created by Harshika Sharma on 24/06/26.
//
import SwiftUI

extension View {

    func meowlDisplayLg() -> some View {
        modifier(
            MeowlFontModifier(
                size: 34,
                weight: .black,
                tracking: -0.5,
                isDisplay: true
            )
        )
    }

    func meowlHeadlineLg() -> some View {
        modifier(
            MeowlFontModifier(
                size: 28,
                weight: .bold,
                tracking: -0.4,
                isDisplay: true
            )
        )
    }

    func meowlHeadlineMd() -> some View {
        modifier(
            MeowlFontModifier(
                size: 22,
                weight: .bold,
                isDisplay: true
            )
        )
    }

    func meowlBodyLg() -> some View {
        modifier(
            MeowlFontModifier(
                size: 17,
                weight: .regular
            )
        )
    }

    func meowlBodyMd() -> some View {
        modifier(
            MeowlFontModifier(
                size: 15,
                weight: .regular
            )
        )
    }

    func meowlLabelMd() -> some View {
        modifier(
            MeowlFontModifier(
                size: 13,
                weight: .semibold
            )
        )
    }
}
