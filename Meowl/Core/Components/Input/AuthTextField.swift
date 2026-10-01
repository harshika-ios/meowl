import SwiftUI

struct AuthTextField: View {
    let title: String
    let placeholder: String
    let icon: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    var textContentType: UITextContentType? = nil
    var isSecure = false

    @State private var isPasswordVisible = false

    var body: some View {
        VStack(alignment: .leading, spacing: 9) {
            Text(title)
                .font(.beVietnamProSemiBold(size: 14))
                .foregroundColor(.meowlOnSurface)

            HStack(spacing: 12) {
                Image(systemName: icon)
                    .font(.system(size: 17, weight: .medium))
                    .foregroundColor(.meowlOutline)
                    .frame(width: 22)

                Group {
                    if isSecure && !isPasswordVisible {
                        SecureField(placeholder, text: $text)
                            .textContentType(textContentType)
                    } else {
                        TextField(placeholder, text: $text)
                            .keyboardType(keyboardType)
                            .textContentType(textContentType)
                            .textInputAutocapitalization(keyboardType == .emailAddress ? .never : .sentences)
                            .autocorrectionDisabled(keyboardType == .emailAddress)
                    }
                }
                .font(.beVietnamProRegular(size: 15))
                .foregroundColor(.meowlOnSurface)

                if isSecure {
                    Button {
                        isPasswordVisible.toggle()
                    } label: {
                        Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                            .font(.system(size: 16))
                            .foregroundColor(.meowlOutline)
                    }
                    .accessibilityLabel(isPasswordVisible ? "Hide password" : "Show password")
                }
            }
            .padding(.horizontal, 16)
            .frame(height: 56)
            .background(Color.white)
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.meowlOutlineVariant.opacity(0.7), lineWidth: 1)
            }
        }
    }
}