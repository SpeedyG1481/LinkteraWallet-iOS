//
//  LinkteraWalletView.swift
//  BinBin
//
//  Created by Raşid Ramazanov on 19.03.2025.
//  Copyright © 2025 Mobven. All rights reserved.
//

import SwiftUI
import UIKit
import Flutter

public struct LinkteraWalletView: UIViewControllerRepresentable {

    public init() {
        // Public Initializer
    }

    public func makeUIViewController(context: Context) -> UIViewController {
        guard let engine = LinkteraWallet.flutterEngine else {
            fatalError("Flutter engine not initialized")
        }
        let flutterVC = FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        flutterVC.modalPresentationStyle = .fullScreen
        flutterVC.setInitialRoute("/")

        let eventChannel = FlutterEventChannel(
            name: "com.binpay.app/native_events", binaryMessenger: flutterVC.binaryMessenger
        )
        eventChannel.setStreamHandler(LinkteraWallet.flutterStream)

        return flutterVC
    }

    public func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        //uiViewController.view.setNeedsLayout()
        //uiViewController.view.layoutIfNeeded()
    }
}
