import Foundation

protocol LocalDatabase {
    func migrate() async
    func getSessionToken() async -> String?
    func setSessionToken(_ token: String?) async
}
