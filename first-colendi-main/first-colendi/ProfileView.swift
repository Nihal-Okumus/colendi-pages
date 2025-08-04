import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Profil")
                .font(.largeTitle)
                .bold()

            Text("Ad: Nihal Okumuş")
            Text("E-posta: nihal.okumus@colendi.com")

            Spacer()
            
            Button("Çıkış Yap") {
                dismiss()  
            }
            .foregroundColor(.red)
            
            
            
        }
        .padding()
        .navigationTitle("Profil")
    }
}

#Preview {
    ProfileView()
}
