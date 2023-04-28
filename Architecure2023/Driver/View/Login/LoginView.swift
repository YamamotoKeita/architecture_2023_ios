import SwiftUI

struct LoginView: View {

    @StateObject var viewModel = LoginViewModel()

    var body: some View {
        VStack {
            HStack {
                Text("UserName")
                TextField("UserName", text: $viewModel.userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(16.0)
            }
            HStack {
                Text("Password")
                TextField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(16.0)
            }
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
            }
            Button("Login") {
                viewModel.onLoginTapped()
            }
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
