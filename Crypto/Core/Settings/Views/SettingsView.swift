//
//  SettingsView.swift
//  Crypto
//
//  Created by Uday Gajera on 27/01/24.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coffeeURL = URL(string: "https://buymeacoffee.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personURL = URL(string: "https://www.github.com/udayg24")!
    
    var body: some View {
        
        NavigationView{
            
            
            ZStack {
                Color.theme.background.ignoresSafeArea()
                List {
                    section1
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    section2
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    section3
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    section4
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
                .accentColor(.blue)
                .listStyle(GroupedListStyle())
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        XMark()
                    }
            }
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    
    private var section1: some View {
        Section(header: Text("Uday")){
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a swiftful thinking course on youtube. It uses MVVM Architecture, combine and coredata.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Youtube", destination: youtubeURL)
            Link("Buy me a Coffee", destination: coffeeURL)
        }
    }
    
    private var section2: some View {
        Section(header: Text("CoinGecko")){
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The Cryptocurrency data that is used in this app comes from the free API.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("CoinGecko", destination: coingeckoURL)
        }
    }
    
    private var section3: some View {
        Section(header: Text("Developer")){
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Uday following Nick Sarno's Yt Tutorial written completely in Swift. The project benefits from multi-threading, publishers/subscribers and data persistence.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Github", destination: personURL)
        }
        
    }
    

    private var section4: some View {
        Section(header: Text("Application")){
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
            }

}

}
