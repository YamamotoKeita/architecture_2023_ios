// Service
private let _application = ApplicationImpl()
private let _alert = AlertImpl()
private let _firebase = FirebaseImpl()
private let _analytics = AnalyticsImpl()
private let _logger = LoggerImpl()
private let _localDatabase = LocalDatabaseImpl()

extension UsesApplication {
    var application: Application { _application }
}

extension UsesAlert {
    var alert: Alert { _alert }
}

extension UsesFirebase {
    var firebase: Firebase { _firebase }
}

extension UsesAnalytics {
    var analytics: Analytics { _analytics }
}

extension UsesLogger {
    var logger: Logger { _logger }
}

extension UsesLocalDatabase {
    var localDatabase: LocalDatabase { _localDatabase }
}

// Repository
private let _userRepository = UserRepositoryMock()
private let _todoRepository = TodoRepositoryMock()

extension UsesUserRepository {
    var userRepository: UserRepository { _userRepository }
}

extension UsesTodoRepository {
    var todoRepository: TodoRepository { _todoRepository }
}


// Shared UseCase
private let _versionCheckUseCase = VersionCheckUseCase()
private let _appLifecycleUseCase = AppLifecycleUseCase()
private let _pushNotificationUseCase = PushNotificationUseCase()
private let _connectionErrorUseCase = ConnectionErrorUseCase()
private let _deepLinkUseCase = DeepLinkUseCase()
private let _webViewUseCase = WebViewUseCase()

extension UsesAppLifecycleUseCase {
    var appLifecycleUseCase: AppLifecycleUseCase { _appLifecycleUseCase }
}

extension UsesVersionCheckUseCase {
    var versionCheckUseCase: VersionCheckUseCase { _versionCheckUseCase }
}

extension UsesPushNotificationUseCase {
    var pushNotificationUseCase: PushNotificationUseCase { _pushNotificationUseCase }
}

extension UsesConnectionErrorUseCase {
    var connectionErrorUseCase: ConnectionErrorUseCase { _connectionErrorUseCase }
}

extension UsesDeepLinkUseCase {
    var deepLinkUseCase: DeepLinkUseCase { _deepLinkUseCase }
}

extension UsesWebViewUseCase {
    var webViewUseCase: WebViewUseCase { webViewUseCase }
}

// Shared state
private let _mainScreenState = MainScreenState()
private let _mainTabState = MainTabState()

extension UsesMainScreenState {
    var mainScreenState: MainScreenState { _mainScreenState }
}

extension UsesMainTabState {
    var mainTabState: MainTabState { _mainTabState }
}
