class MainScreenState {
    var delegate: MainScreenStateDelegate?

    func change(_ type: MainScreenType) {
        delegate?.change(type)
    }
}

protocol MainScreenStateDelegate {
    func change(_ type: MainScreenType)
}

protocol UsesMainScreenState {
    var mainScreenState: MainScreenState { get }
}
