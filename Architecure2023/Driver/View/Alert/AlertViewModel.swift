import Foundation

class AlertViewModel: ObservableObject, UsesAlert {
    @Published var isAlertShown = false

    @Published var alerts: [AlertInfo] = [] {
        didSet {
            isAlertShown = !alerts.isEmpty
        }
    }
    
    var title: String {
        alerts.first?.title ?? ""
    }

    var frontAlert: AlertInfo {
        alerts.last ?? AlertInfo(title: nil, message: "", buttons: [])
    }

    init() {
        alert.setOutput(self)
    }

    func onClickButton(_ button: AlertButton) {
        alert.onClickButton(button)
        alerts.removeLast()
    }
}

extension AlertViewModel: AlertOutput {
    func showAlert(title: String?, message: String, buttons: [AlertButton]) {
        alerts.append(AlertInfo(
            title: title,
            message: message,
            buttons: buttons)
        )
    }
}
