import Foundation

class MainTabViewModel: UsesMainTabState, ObservableObject {
    @Published var mainTabType: MainTabType

    init(mainTabType: MainTabType = .todoList) {
        self.mainTabType = mainTabType
        mainTabState.delegate = self
    }
}

extension MainTabViewModel: MainTabStateDelegate {
    func change(_ type: MainTabType) {
        DispatchQueue.main.async {
            self.mainTabType = type
        }
    }
}
