import SwiftUI

struct AlertView: ViewModifier {
    @StateObject var viewModel = AlertViewModel()

    func body(content: Content) -> some View {
        content
            .alert(viewModel.title,
                   isPresented: $viewModel.isAlertShown,
                   presenting: viewModel.frontAlert) { alertInfo in
                ForEach(alertInfo.buttons, id: \.label) { button in
                    Button(button.label) {
                        viewModel.onClickButton(button)
                    }
                }
            } message: { alertInfo in
                Text(alertInfo.message)
            }

    }
}

extension View {
    func globalAlert() -> some View {
        modifier(AlertView())
    }
}
