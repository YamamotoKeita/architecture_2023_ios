protocol UsesAppLifecycleUseCase {
    var appLifecycleUseCase: AppLifecycleUseCase { get }
}

protocol UsesVersionCheckUseCase {
    var versionCheckUseCase: VersionCheckUseCase { get }
}

protocol UsesPushNotificationUseCase {
    var pushNotificationUseCase: PushNotificationUseCase { get }
}

protocol UsesConnectionErrorUseCase {
    var connectionErrorUseCase: ConnectionErrorUseCase { get }
}

protocol UsesDeepLinkUseCase {
    var deepLinkUseCase: DeepLinkUseCase { get }
}

protocol UsesWebViewUseCase {
    var webViewUseCase: WebViewUseCase { get }
}
