import SwiftUI

struct SignupView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var showConnectionNotice = false

    private var canCreateAccount: Bool {
        !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        email.contains("@") && password.count >= 8
    }

    var body: some View {
        AuthPage {
            AuthBrandHeader(
                title: "Join the pack",
                subtitle: "Create your account and meet a community that loves pets as much as you do."
            )

            VStack(spacing: 18) {
                AuthTextField(
                    title: "Your name",
                    placeholder: "How should we call you?",
                    icon: "person",
                    text: $name,
                    textContentType: .name
                )

                AuthTextField(
                    title: "Email address",
                    placeholder: "you@example.com",
                    icon: "envelope",
                    text: $email,
                    keyboardType: .emailAddress,
                    textContentType: .emailAddress
                )

                AuthTextField(
                    title: "Create a password",
                    placeholder: "At least 8 characters",
                    icon: "lock",
                    text: $password,
                    textContentType: .newPassword,
                    isSecure: true
                )

                MeowlPrimaryButton(
                    title: "Create Account",
                    showsArrow: true,
                    isEnabled: canCreateAccount
                ) {
                    showConnectionNotice = true
                }
                .padding(.top, 4)
            }

            AuthDivider()
            AuthSocialButton(title: "Sign up with Apple")

            HStack(spacing: 5) {
                Text("Already have an account?")
                    .foregroundColor(.meowlOnSurfaceVariant)
                NavigationLink("Log in") {
                    LoginView()
                }
                .font(.beVietnamProSemiBold(size: 14))
                .foregroundColor(.meowlPrimary)
            }
            .font(.beVietnamProRegular(size: 14))
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Almost there!", isPresented: $showConnectionNotice) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Your sign-up form is ready. Connect an authentication provider to create accounts.")
        }
    }
}