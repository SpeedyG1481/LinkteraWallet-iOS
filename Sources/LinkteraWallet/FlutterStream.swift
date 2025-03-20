//
//  FlutterStream.swift
//  LinkteraWallet
//
//  Created by Raşid Ramazanov on 19.03.2025.
//  Copyright © 2025 Mobven. All rights reserved.
//

import SwiftUI
import Flutter
import FlutterPluginRegistrant

final class FlutterStream: NSObject, FlutterStreamHandler {
    var eventSink: FlutterEventSink?

    func onListen(withArguments arguments: Any?, eventSink: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = eventSink
        return nil
    }

    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        self.eventSink = nil
        return nil
    }
}
