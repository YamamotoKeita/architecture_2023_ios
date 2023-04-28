import SwiftUI

@main
struct Architecure2023App: App {

    @Environment(\.scenePhase) private var scenePhase
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    @StateObject var viewModel = AppViewModel()

    var body: some Scene {
        WindowGroup {
            switch viewModel.mainScreenType {
            case .launch:
                LaunchView()
            case .login:
                LoginView()
                    .globalAlert()
            case .main:
                MainTabView()
                    .globalAlert()
            }
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
              case .active:
                viewModel.onBecomeActive()
              case .background:
                viewModel.onEnterBackground()
              default:
                  break
              }
        }
    }
}

