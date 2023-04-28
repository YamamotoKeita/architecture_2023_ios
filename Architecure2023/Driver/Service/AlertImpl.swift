import Foundation

class AlertImpl: Alert {
    private var output: AlertOutput?
    private var buttonContinuation: CheckedContinuation<AlertButton, Never>?

    func setOutput(_ output: AlertOutput?) {
        self.output = output
    }

    func show(title: String?, message: String, buttons: [AlertButton]) async -> AlertButton {
        if let existingContinuation = buttonContinuation {
            // TODO
            buttonContinuation = nil
        }

        DispatchQueue.main.async {
            self.output?.showAlert(title: title, message: message, buttons: buttons)
        }
        return await withCheckedContinuation { continuation in
            buttonContinuation = continuation
        }
    }

    func onClickButton(_ button: AlertButton) {
        buttonContinuation?.resume(returning: button)
    }
}
