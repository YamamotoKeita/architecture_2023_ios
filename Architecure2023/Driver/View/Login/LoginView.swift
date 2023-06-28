import SwiftUI

struct LoginView: View {

    @StateObject var viewModel = LoginViewModel()

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("UserName")
                TextField("UserName", text: $viewModel.userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))

            VStack(alignment: .leading) {
                Text("Password")
                TextField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))

            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
            }

            Button("Login") {
                viewModel.onLoginTapped()
            }
            .frame(maxWidth: .infinity)
            .padding(10)
            .background(Color.accentColor)
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(30)
        }
        .onAppear {
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
