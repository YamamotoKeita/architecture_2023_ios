import Foundation

protocol LoginUseCase: UsesUserRepository, UsesLocalDatabase {
    var output: LoginUseCaseOutput? { get set }
    func login(userName: String, password: String) async
}

extension LoginUseCase {
    func login(userName: String, password: String) async {
        let result = await userRepository.get(userName: userName, passowrd: password)
        switch result {
        case .success(let user):
            await localDatabase.setSessionToken(user.token)
            output?.loginSucceeded(user: user)
        case .failure(let error):
            if error == .badRequest {
                output?.loginFailed(message: "UserNameかPasswordに誤りがあります。")
            }
        }
    }
}

protocol LoginUseCaseOutput {
    func loginSucceeded(user: User)
    func loginFailed(message: String?)
}
