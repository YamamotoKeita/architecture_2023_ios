import SwiftUI

class AppViewModel: ObservableObject, UsesAppLifecycleUseCase, UsesMainScreenState, UsesAlert {
    @Published var mainScreenType: MainScreenType = .launch

    init() {
        mainScreenState.delegate = self
    }

    func onBecomeActive() {
        Task {
            await appLifecycleUseCase.onEnterForeground()
        }
    }

    func onEnterBackground() {
        Task {
            await appLifecycleUseCase.onLeaveForeground()
        }
    }
}

extension AppViewModel: MainScreenStateDelegate {
    func change(_ type: MainScreenType) {
        DispatchQueue.main.async {
            self.mainScreenType = type
        }
    }
}
