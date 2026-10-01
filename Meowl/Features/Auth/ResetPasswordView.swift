import SwiftUI

struct ResetPasswordView: View {
    @State private var email = ""
    @State private var showConfirmation = false

    var body: some View {
        AuthPage {
            AuthBrandHeader(
                title: "Reset password",
                subtitle: "Enter the email linked to your account and we’ll help you get back in."
            )

            AuthTextField(
                title: "Email address",
                placeholder: "you@example.com",
                icon: "envelope",
                text: $email,
                keyboardType: .emailAddress,
                textContentType: .emailAddress
            )

            MeowlPrimaryButton(
                title: "Send reset link",
                showsArrow: true,
                isEnabled: email.contains("@")
            ) {
                showConfirmation = true
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Reset link requested", isPresented: $showConfirmation) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Password recovery is ready to connect to your authentication provider.")
        }
    }
}