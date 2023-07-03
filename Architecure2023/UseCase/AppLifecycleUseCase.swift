import Foundation

protocol AppLifecycleUseCase: UsesLocalDatabase, UsesFirebase, UsesUserRepository, UsesVersionCheckUseCase, UsesMainScreenState, UsesAnalytics {
    func launch() async
    func launchFromURL(url: URL) async
    func onEnterForeground() async
    func onLeaveForeground() async
}

extension AppLifecycleUseCase {
    // 通常起動
    func launch() async {
        await localDatabase.migrate()
        firebase.initialize()
        analytics.send(.launch)

        guard let token = await localDatabase.getSessionToken() else {
            mainScreenState.change(.login)
            return
        }

        let result = await userRepository.get(token: token)
        switch result {
        case .success(_):
            mainScreenState.change(.main)
        case .failure(_):
            mainScreenState.change(.login)
        }
    }

    // DeepLinkやURLSchemeからの起動
    func launchFromURL(url: URL) async {
    }

    // アプリがフォアグラウンドになったとき
    func onEnterForeground() async {
        await versionCheckUseCase.versionCheck()
    }

    // アプリがバックグラウンドになっるとき
    func onLeaveForeground() async {
    }
}
