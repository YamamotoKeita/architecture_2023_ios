import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate, UsesAppLifecycleUseCase, UsesDeepLinkUseCase, UsesPushNotificationUseCase {

    // アプリの起動
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        Task {
            await appLifecycleUseCase.launch()
        }
        return true
    }

    // PUSH通知の受信
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        pushNotificationUseCase.notificationReceived(userInfo: userInfo)
    }

    /// URLスキームからの起動およびレジューム
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        deepLinkUseCase.onOpenFromURL(url)
        return true
    }
}
