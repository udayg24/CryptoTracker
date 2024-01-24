//
//  CryptoApp.swift
//  Crypto
//
//  Created by Uday Gajera on 24/01/24.
//

import SwiftUI

@main
struct CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .navigationBarHidden(true)
        }
    }
}
