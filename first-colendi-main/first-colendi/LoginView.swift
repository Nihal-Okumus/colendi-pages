import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn = false


    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Giriş Yap")
                    .font(.largeTitle)
                    .bold()

                TextField("E-posta", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .padding(.horizontal)

                SecureField("Şifre", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Button("Giriş Yap") {
                    isLoggedIn = true
                    
                }
                
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.horizontal)

                
                
                
                NavigationLink(destination: HomeView(), isActive: $isLoggedIn) {
                    EmptyView()
                }

                
                
               
                HStack {
                    Text("Hesabın yok mu?")
                        .font(.body)
                        .foregroundColor(.black)
                    
                    NavigationLink(destination: RegisterView()) {
                        Text("Kayıt Ol")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
