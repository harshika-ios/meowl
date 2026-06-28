//
//  MeowlPrimaryButton.swift
//  Meowl
//

import SwiftUI

struct MeowlPrimaryButton: View {

    let title: String

    var showsArrow: Bool = false
    var isEnabled: Bool = true

    var backgroundColor: Color = .meowlPrimary
    var foregroundColor: Color = .white

    var action: () -> Void

    var body: some View {

        Button(action: action) {

            HStack(spacing: 10) {

                Text(title)
                    .font(.plusJakartaBold(size: 20))

                if showsArrow {
                    Image(systemName: "arrow.right")
                        .font(.system(size: 20, weight: .semibold))
                }
            }
            .foregroundColor(foregroundColor)
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            .background(backgroundColor)
            .clipShape(Capsule())
            .shadow(
                color: backgroundColor.opacity(0.25),
                radius: 16,
                x: 0,
                y: 8
            )
        }
        .disabled(!isEnabled)
        .opacity(isEnabled ? 1 : 0.5)
        .animation(.easeInOut(duration: 0.2), value: isEnabled)
    }
}

#Preview {

    VStack(spacing: 20) {

        MeowlPrimaryButton(
            title: "Next",
            showsArrow: true,
            isEnabled: true
        ) {

        }

        MeowlPrimaryButton(
            title: "Continue",
            isEnabled: false
        ) {

        }
    }
    .padding()
}
