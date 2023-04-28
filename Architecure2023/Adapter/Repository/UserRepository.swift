import Foundation

protocol UserRepository {
    func get(userName: String, passowrd: String) async -> Result<User, QueryError>
    func get(token: String) async -> Result<User, QueryError>
}
