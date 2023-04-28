import Foundation

class LoginViewModel: ObservableObject, UsesMainScreenState, UsesAlert {
    @Published var userName: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String?

    let useCase = LoginUseCase()

    init() {
        useCase.output = self
    }

    func onLoginTapped() {
        Task {
            await useCase.login(userName: userName, password: password)
        }
    }
}

extension LoginViewModel: LoginUseCaseOutput {
    func loginSucceeded(user: User) {
        // TODO メインスレッドで戻す方法を共通化できないか
        DispatchQueue.main.async {
            self.mainScreenState.change(.main)
        }
    }

    func loginFailed(message: String?) {
        DispatchQueue.main.async {
            self.errorMessage = message
        }
    }
}
