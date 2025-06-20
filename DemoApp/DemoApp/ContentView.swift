//
//  ContentView.swift
//  DemoApp
//
//  Created by Raşid Ramazanov on 20.03.2025.
//

import LinkteraWallet
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")

                NavigationLink {
                    LinkteraWalletView()
                } label: {
                    Text("Linktera Cüzdan")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
