import UIKit
import LinkteraWallet

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Setup code

        LinkteraWallet.initializeFlutterEngine()

        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let sceneConfig = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        sceneConfig.delegateClass = SceneDelegate.self
        return sceneConfig
    }

    func linkteraDeeplink() {
        // swiftlint:disable all
        let link = "https://testweb.1000pay.com/reset-password?token=Q2ZESjhDQmorblZ5Q1R4QXZOcmxHWFcwSUFEa3hhTmZEdmVXTG1NVnd6dTNXVGRKcDdidlZXbmlrcFA5a08wYUlLRUh3NG5RNTNySVJFYXpaK1hjdEdmekpZNUszblNQcXNxQ2t4QXFkVTNvU0xhdGYyWndmVFVFdVdyRnh1R1FQeFB5cElqZmd0WTR2MEswbWE5RVZYS2pXL0l2T0tXVnBpZHpDNUk3YnpMbFkzeVRuZks5eVNYQmpNY3NkMEVnVkZyc3R0NWFZZVhWU29ORTF1ZHlhaEU3dDV0N203OER3VlBxcmo1VFdjektRWUVM&username=I905378227235"
        // swiftlint:enable all

        LinkteraWallet.initializeFlutterEngine()
        Task { @MainActor in
//            self.onPresentNavigation(LinkteraWalletView())
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            LinkteraWallet.sendDeepLinkToFlutter(link)
        }
    }
}
