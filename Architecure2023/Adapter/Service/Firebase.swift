protocol Firebase {
    func initialize()

    func getRemoteConfig() async -> RemoteConfig
}
