import UIKit

class ApplicationImpl: Application {

    var version: String {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }

    func openBrowser(url: String) {
        guard let url = URL(string: url) else { return }
        DispatchQueue.main.async {
            UIApplication.shared.open(url)
        }
    }

    func terminate() {
        exit(0)
    }
}
