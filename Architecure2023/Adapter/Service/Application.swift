import Foundation

protocol Application {
    var version: String { get }

    func openBrowser(url: String)

    func terminate()
}

