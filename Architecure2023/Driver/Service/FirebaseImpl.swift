import Foundation

class FirebaseImpl: Firebase {
    func initialize() {
    }

    func getRemoteConfig() async -> RemoteConfig {
        return RemoteConfig(
            minimumSupportVersion: "1.0.0",
            storeURL: "https://example.net"
        )
    }
}
