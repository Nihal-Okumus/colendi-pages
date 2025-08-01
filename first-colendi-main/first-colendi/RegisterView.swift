import SwiftUI

struct RegisterView: View {
    @Environment(\.dismiss) var dismiss

    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var errorMessage = ""

    var body: some View {
        VStack(spacing: 20) {

           
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.secondary)
                        .font(.title2)
                }
                Spacer()
            }
            .padding(.horizontal)

            Text("Kayıt Ol")
                .font(.largeTitle)
                .bold()

            TextField("E-posta", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)

            SecureField("Şifre", text: $password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)

            SecureField("Şifreyi Tekrarla", text: $confirmPassword)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)

            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }

            Button(action: {
                register()
            }) {
                Text("Kayıt Ol")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
            }

            Spacer()
        }
        .padding()
    }

    func register() {
        guard !email.isEmpty, !password.isEmpty, !confirmPassword.isEmpty else {
            errorMessage = "Lütfen tüm alanları doldurun."
            return
        }

        guard password == confirmPassword else {
            errorMessage = "Şifreler eşleşmiyor."
            return
        }

        // Gerçek kayıt işlemi buraya eklenebilir
        errorMessage = "Kayıt başarılı! (Demo)"
    }
}

#Preview {
    RegisterView()
}
