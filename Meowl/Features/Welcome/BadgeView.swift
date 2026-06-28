//
//  BadgeView.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//

import SwiftUI

struct BadgeView: View {

    let icon: String
    let title: String
    let backgroundColor: Color

    var body: some View {

        HStack(spacing: 8) {

            Image(systemName: icon)

            Text(title)
                .font(.plusJakartaBold(size: 16))
        }
        .foregroundColor(.white)
        .padding(.horizontal,18)
        .padding(.vertical,12)
        .background(
            Capsule()
                .fill(backgroundColor)
        )
    }
}
