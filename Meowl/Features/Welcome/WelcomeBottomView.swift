//
//  WelcomeBottomView.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//


import SwiftUI

struct WelcomeBottomView: View {

    var body: some View {

        VStack(spacing: 22) {

            Button {

            } label: {

                Text("Get Started")
                    .font(.plusJakartaBold(size: 22))
                    .foregroundColor(.meowlOnPrimaryContainer)
                    .frame(maxWidth: .infinity)
                    .frame(height: 58)
                    .background(Color.meowlPrimaryContainer)
                    .clipShape(RoundedRectangle(cornerRadius: 18))
            }

            Button {

            } label: {

                Text("Log In")
                    .font(.beVietnamProSemiBold(size: 13))
                    .foregroundColor(Color.meowlPrimary)
            }
        }
        .padding(.horizontal, 28)
        .padding(.bottom, 40)
    }
}

#Preview {
    NavigationStack {
        WelcomeBottomView()
    }
}
