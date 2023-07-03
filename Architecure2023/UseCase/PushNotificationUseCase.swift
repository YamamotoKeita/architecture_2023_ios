import Foundation

protocol PushNotificationUseCase {
    func notificationReceived(userInfo: [AnyHashable: Any])
}

extension PushNotificationUseCase {
    func notificationReceived(userInfo: [AnyHashable: Any]) {
        
    }
}
