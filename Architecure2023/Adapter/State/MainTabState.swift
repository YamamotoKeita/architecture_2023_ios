class MainTabState {
    var delegate: MainTabStateDelegate?

    func change(_ type: MainTabType) {
        delegate?.change(type)
    }
}

protocol MainTabStateDelegate {
    func change(_ type: MainTabType)
}

protocol UsesMainTabState {
    var mainTabState: MainTabState { get }
}
