import Foundation

protocol Alert {
    func setOutput(_ output: AlertOutput?)
    func show(title: String?, message: String, buttons: [AlertButton]) async -> AlertButton
    func showNotice(title: String?, message: String) async
    func onClickButton(_ button: AlertButton)
}

extension Alert {
    func showNotice(title: String?, message: String) async {
        _ = await show(
            title: title,
            message: message,
            buttons: [AlertButton(label: "OK")]
        )
    }
}

protocol AlertOutput {
    func showAlert(title: String?, message: String, buttons: [AlertButton])
}

