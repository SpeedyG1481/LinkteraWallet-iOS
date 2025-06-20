//
//  DemoAppApp.swift
//  DemoApp
//
//  Created by Raşid Ramazanov on 20.03.2025.
//

import SwiftUI

@main
struct DemoAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
