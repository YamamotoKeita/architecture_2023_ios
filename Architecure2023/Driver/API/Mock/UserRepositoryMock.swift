
private var users = [
    User(userName: "name", password: "pass", token: "token")
]

class UserRepositoryMock: UserRepository {
    func get(userName: String, passowrd: String) async -> Result<User, QueryError> {
        let user = users.first { $0.userName == userName && $0.password == passowrd }
        if let user = user {
            return .success(user)
        } else {
            return .failure(.badRequest)
        }
    }

    func get(token: String) async -> Result<User, QueryError> {
        return .failure(.connectionFailed)
    }
}
