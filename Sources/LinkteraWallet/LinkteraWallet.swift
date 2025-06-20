//
//  LinkteraWallet.swift
//  LinkteraWallet
//
//  Created by Raşid Ramazanov on 19.03.2025.
//  Copyright © 2025 Mobven. All rights reserved.
//

import SwiftUI
import Flutter
import FlutterPluginRegistrant

public actor LinkteraWallet {

    static var flutterEngine: FlutterEngine?
    static var flutterStream: FlutterStream = FlutterStream()

    // Flutter engine'i başlatan ve eklentileri kaydeden yardımcı method
    public static func initializeFlutterEngine() {
        // Engine zaten başlatılmış mı kontrol et
        if flutterEngine == nil {
            print("Flutter engine initializing...")
            flutterEngine = FlutterEngine(name: "my_flutter_engine")
            flutterEngine?.run()
            GeneratedPluginRegistrant.register(with: flutterEngine!)

            print("Flutter engine initialized: \(flutterEngine != nil)")
        } else {
            print("Flutter engine already initialized and running")
        }
    }

    // ✅ Flutter'a bir deep link göndermek için kullanılacak fonksiyon
    public static func sendDeepLinkToFlutter(_ deepLink: String) {
        flutterStream.eventSink?(["type": "deepLink", "data": deepLink])
    }

    // ✅ Flutter'a bir bildirim göndermek için kullanılacak fonksiyon
    public static func sendNotificationToFlutter(_ notificationData: String) {
        flutterStream.eventSink?(["type": "notification", "data": notificationData])
    }
}
