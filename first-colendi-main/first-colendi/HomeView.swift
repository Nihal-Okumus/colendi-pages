import SwiftUI

struct HomeView: View {
   

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Hoş Geldin!")
                    .font(.largeTitle)
                    .bold()

                Text("Burası Anasayfa")
                    .foregroundColor(.gray)

                Spacer()

               
               

            }
            .padding()
            .navigationTitle("Anasayfa")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person.circle")
                            .font(.title2)
                    }
                }
            }
        }
    }
}
