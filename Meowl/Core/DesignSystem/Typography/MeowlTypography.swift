//
//  MeowlTypography.swift
//  Meowl
//
//  Created by Harshika Sharma on 24/06/26.
//

import SwiftUI
struct MeowlFontModifier: ViewModifier {
    let size: CGFloat
    let weight: Font.Weight
    let tracking: CGFloat
    let isDisplay: Bool

    init(
        size: CGFloat,
        weight: Font.Weight,
        tracking: CGFloat = 0,
        isDisplay: Bool = false
    ) {
        self.size = size
        self.weight = weight
        self.tracking = tracking
        self.isDisplay = isDisplay
    }

    func body(content: Content) -> some View {
        content
            .font(
                .custom(
                    isDisplay ? "PlusJakartaSans-Bold" : "BeVietnamPro-Regular",
                    size: size
                )
            )
            .tracking(tracking)
    }
}
