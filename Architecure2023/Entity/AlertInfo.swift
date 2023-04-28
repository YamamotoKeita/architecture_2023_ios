import Foundation

struct AlertInfo {
    let title: String?
    let message: String
    let buttons: [AlertButton]
}

struct AlertButton {
    let label: String
    let type: AlertButtonType = .normal
}

enum AlertButtonType {
    case normal
    case cancel
    case destructive
}
