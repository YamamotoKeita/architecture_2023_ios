// Production用Depencency。実際はプリプロセッサーマクロとかで切り替える
// テストのときどうする？

var diContainer = DIContainer(
    application: ApplicationImpl(),
    alert: AlertImpl(),
    firebase: FirebaseImpl(),
    analytics: AnalyticsImpl(),
    logger: LoggerImpl(),
    localDatabase: LocalDatabaseImpl(),
    userRepository: UserRepositoryMock(),
    todoRepository: TodoRepositoryMock(),
    versionCheckUseCase: VersionCheckUseCaseImpl(),
    appLifecycleUseCase: AppLifecycleUseCaseImpl(),
    pushNotificationUseCase: PushNotificationUseCaseImpl(),
    connectionErrorUseCase: ConnectionErrorUseCaseImpl(),
    deepLinkUseCase: DeepLinkUseCaseImpl(),
    webViewUseCase: WebViewUseCaseImpl(),
    mainScreenState: MainScreenState(),
    mainTabState: MainTabState()
)

class AppLifecycleUseCaseImpl: AppLifecycleUseCase {}
class VersionCheckUseCaseImpl: VersionCheckUseCase {}
class PushNotificationUseCaseImpl: PushNotificationUseCase {}
class ConnectionErrorUseCaseImpl: ConnectionErrorUseCase {}
class DeepLinkUseCaseImpl: DeepLinkUseCase {}
class WebViewUseCaseImpl: WebViewUseCase {}
class LoginUseCaseImpl: LoginUseCase {
    var output: LoginUseCaseOutput?
}
class TodoUseCaseImpl: TodoUseCase {
    var output: TodoUseCaseOutput?
    var filterConditin: TodoFilter = TodoFilter(labels: [])
}
