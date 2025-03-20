//
//  ContentView.swift
//  DemoApp
//
//  Created by Raşid Ramazanov on 20.03.2025.
//

import SwiftUI
import LinkteraWallet

struct ContentView: View {
    @State var presentLinkteraWallet: Bool = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")

            Button {
                presentLinkteraWallet.toggle()
            } label: {
                Text("Linktera Cüzdan")
            }

        }
        .fullScreenCover(isPresented: $presentLinkteraWallet, content: {
            LinkteraWalletView()
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
