struct DIContainer {
    // Service
    let application: Application
    let alert: Alert
    let firebase: Firebase
    let analytics: Analytics
    let logger: Logger
    let localDatabase: LocalDatabase

    // Repository
    let userRepository: UserRepository
    let todoRepository: TodoRepository

    // Shared UseCase
    let versionCheckUseCase: VersionCheckUseCase
    let appLifecycleUseCase: AppLifecycleUseCase
    let pushNotificationUseCase: PushNotificationUseCase
    let connectionErrorUseCase: ConnectionErrorUseCase
    let deepLinkUseCase: DeepLinkUseCase
    let webViewUseCase: WebViewUseCase

    // Shared state
    let mainScreenState: MainScreenState
    let mainTabState: MainTabState
}

// Services
extension UsesApplication {
    var application: Application { diContainer.application }
}

extension UsesAlert {
    var alert: Alert { diContainer.alert }
}

extension UsesFirebase {
    var firebase: Firebase { diContainer.firebase }
}

extension UsesAnalytics {
    var analytics: Analytics { diContainer.analytics }
}

extension UsesLogger {
    var logger: Logger { diContainer.logger }
}

extension UsesLocalDatabase {
    var localDatabase: LocalDatabase { diContainer.localDatabase }
}

// Shared UseCase
extension UsesAppLifecycleUseCase {
    var appLifecycleUseCase: AppLifecycleUseCase { diContainer.appLifecycleUseCase }
}

extension UsesVersionCheckUseCase {
    var versionCheckUseCase: VersionCheckUseCase { diContainer.versionCheckUseCase }
}

extension UsesPushNotificationUseCase {
    var pushNotificationUseCase: PushNotificationUseCase { diContainer.pushNotificationUseCase }
}

extension UsesConnectionErrorUseCase {
    var connectionErrorUseCase: ConnectionErrorUseCase { diContainer.connectionErrorUseCase }
}

extension UsesDeepLinkUseCase {
    var deepLinkUseCase: DeepLinkUseCase { diContainer.deepLinkUseCase }
}

extension UsesWebViewUseCase {
    var webViewUseCase: WebViewUseCase { diContainer.webViewUseCase }
}

// Repository
extension UsesUserRepository {
    var userRepository: UserRepository { diContainer.userRepository }
}

extension UsesTodoRepository {
    var todoRepository: TodoRepository { diContainer.todoRepository }
}

// State
extension UsesMainScreenState {
    var mainScreenState: MainScreenState { diContainer.mainScreenState }
}

extension UsesMainTabState {
    var mainTabState: MainTabState { diContainer.mainTabState }
}
