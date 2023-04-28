protocol UsesApplication {
    var application: Application { get }
}

protocol UsesAlert {
    var alert: Alert { get }
}

protocol UsesFirebase {
    var firebase: Firebase { get }
}

protocol UsesAnalytics {
    var analytics: Analytics { get }
}

protocol UsesLogger {
    var logger: Logger { get }
}

protocol UsesLocalDatabase {
    var localDatabase: LocalDatabase { get }
}
