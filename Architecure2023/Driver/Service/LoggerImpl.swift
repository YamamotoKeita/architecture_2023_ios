import Foundation

class LoggerImpl: Logger {
    func info(_ message: String) {
        print("[INFO] \(message)")
    }

    func warn(_ message: String) {
        print("[WARN] \(message)")
    }
}
