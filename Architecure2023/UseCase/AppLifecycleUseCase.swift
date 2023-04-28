import Foundation

class AppLifecycleUseCase: UsesLocalDatabase, UsesFirebase, UsesUserRepository, UsesVersionCheckUseCase, UsesMainScreenState, UsesAnalytics {

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
            mainScreenState.change(.login)
        case .failure(_):
            mainScreenState.change(.main)
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
