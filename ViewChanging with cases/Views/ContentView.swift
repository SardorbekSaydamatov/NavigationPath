//
//  ContentView.swift
//  ViewChanging with cases
//
//  Created by Sardorbek Saydamatov on 14/10/24.
//

import SwiftUI

enum Destination: Hashable {
    case profile
    case settings
    case detail
    case anotherView
    case additionalView
    
    @ViewBuilder
    func getView() -> some View {
        switch self {
        case .profile:
            ProfileView()
        case .settings:
            SettingsView()
        case .detail:
            DetailView()
        case .anotherView:
            AnotherView()
        case .additionalView:
            AdditionalView()
        }
    }
}


struct ContentView: View {

    @StateObject private var navigationManager = NavigationManager()
    
    var body: some View {
        NavigationStack(path: $navigationManager.navPath) {
            VStack(spacing: 20) {

                Button("Go to Additional View") {
                    navigationManager.navigateTo(.additionalView)
                }
                
                Button("Go to Profile View") {
                    navigationManager.navigateTo(.profile)
                }
                
                Button("Go to Settings View") {
                    navigationManager.navigateTo(.settings)
                }
                
                Button("Go to Another View") {
                    navigationManager.navigateTo(.anotherView)
                }
                
                Button("Go to Detail View") {
                    navigationManager.navigateTo(.detail)
                }
            }
            .navigationTitle("Home View")
            .padding()
            .navigationDestination(for: Destination.self) { destination in
                destination.getView()
            }
        }
        .environmentObject(navigationManager)
    }
}

#Preview {
    ContentView()
}

