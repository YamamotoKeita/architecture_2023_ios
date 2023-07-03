import Foundation

protocol VersionCheckUseCase: UsesFirebase, UsesApplication, UsesAlert {
    func versionCheck() async
    func isValidVersion(_ version: String, minSupportVersion: String) -> Bool
}

extension VersionCheckUseCase {
    func versionCheck() async {
        let remoteConfig = await firebase.getRemoteConfig()

        if isValidVersion(application.version, minSupportVersion: remoteConfig.minimumSupportVersion) {
            return
        }

        _ = await alert.show(
            title: "バージョンエラー",
            message: "このバージョンのアプリはサポートされていません。ストアからアプリをアップデートしてください。",
            buttons: [AlertButton(label: "OK")]
        )

        application.openBrowser(url: remoteConfig.storeURL)
    }

    func isValidVersion(_ version: String, minSupportVersion: String) -> Bool {
        // TODO 1.0と1.0.0を正しく比較できない
        switch minSupportVersion.compare(version, options: .numeric) {
        case .orderedDescending:
            return false
        case .orderedSame, .orderedAscending:
            return true
        }
    }
}
