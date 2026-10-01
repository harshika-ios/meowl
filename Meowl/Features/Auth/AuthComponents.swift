import SwiftUI

struct AuthBrandHeader: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 12) {
            ZStack {
                Circle()
                    .fill(Color.meowlPrimaryContainer.opacity(0.22))
                    .frame(width: 68, height: 68)
                Image(systemName: "pawprint.fill")
                    .font(.system(size: 29, weight: .semibold))
                    .foregroundColor(.meowlPrimary)
            }

            Text(title)
                .font(.plusJakartaBold(size: 27))
                .foregroundColor(.meowlOnSurface)
                .multilineTextAlignment(.center)

            Text(subtitle)
                .font(.beVietnamProRegular(size: 15))
                .foregroundColor(.meowlOnSurfaceVariant)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
        .frame(maxWidth: .infinity)
    }
}

struct AuthDivider: View {
    var body: some View {
        HStack(spacing: 14) {
            Rectangle().fill(Color.meowlOutlineVariant.opacity(0.7)).frame(height: 1)
            Text("OR")
                .font(.beVietnamProSemiBold(size: 11))
                .tracking(1.2)
                .foregroundColor(.meowlOutline)
            Rectangle().fill(Color.meowlOutlineVariant.opacity(0.7)).frame(height: 1)
        }
    }
}

struct AuthSocialButton: View {
    let title: String
    @State private var showProviderNotice = false

    var body: some View {
        Button {
            showProviderNotice = true
        } label: {
            HStack(spacing: 10) {
                Image(systemName: "apple.logo")
                    .font(.system(size: 18, weight: .medium))
                Text(title)
                    .font(.beVietnamProSemiBold(size: 15))
            }
            .foregroundColor(.meowlOnSurface)
            .frame(maxWidth: .infinity)
            .frame(height: 54)
            .background(Color.white)
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.meowlOutlineVariant.opacity(0.7), lineWidth: 1)
            }
        }
        .alert("Apple sign-in isn’t connected", isPresented: $showProviderNotice) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Connect Sign in with Apple to your authentication provider to enable this option.")
        }
    }
}

struct AuthPage<Content: View>: View {
    @ViewBuilder let content: Content

    var body: some View {
        ZStack {
            Color.meowlBackground.ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack(spacing: 28) {
                    content
                }
                .padding(.horizontal, 28)
                .padding(.top, 30)
                .padding(.bottom, 36)
                .frame(maxWidth: 480)
                .frame(maxWidth: .infinity)
            }
        }
        .tint(.meowlPrimary)
    }
}