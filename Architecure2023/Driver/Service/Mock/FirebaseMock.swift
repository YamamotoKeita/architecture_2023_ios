import Foundation

class FirebaseMock: Firebase {
    func initialize() {

    }

    func getRemoteConfig() async -> RemoteConfig {
        return RemoteConfig(
            minimumSupportVersion: "1.0.0",
            storeURL: "https://apps.apple.com/jp/app/wordnotes-boost-vocabulary/id1633552796"
        )
    }
}
