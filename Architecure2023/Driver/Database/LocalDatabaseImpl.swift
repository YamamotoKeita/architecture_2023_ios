import Foundation

class LocalDatabaseImpl: LocalDatabase {

    private var userDefaults: UserDefaults {
        return UserDefaults.standard
    }

    func migrate() async {
    }

    func getSessionToken() async -> String? {
        return userDefaults.string(forKey: "token")
    }

    func setSessionToken(_ token: String?) async {
        userDefaults.set(token, forKey: "token")
    }
}
