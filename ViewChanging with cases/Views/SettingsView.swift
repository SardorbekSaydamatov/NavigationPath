//
//  SettingsView.swift
//  ViewChanging with cases
//
//  Created by Sardorbek Saydamatov on 14/10/24.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var navigationManager: NavigationManager

    var body: some View {
        VStack {
            Text("Settings View")
                .font(.largeTitle)
                .padding()

            Button("Pop to Root") {
                navigationManager.popToRoot()
            }
            
            Button("Go to Profile View") {
                navigationManager.navigateTo(.profile)
            }
            
            Button("Go to Another View") {
                navigationManager.navigateTo(.anotherView)
            }
            
            Button("Go to Detail View") {
                navigationManager.navigateTo(.detail)
            }
            
            Button("Go to Additional View") {
                navigationManager.navigateTo(.additionalView)
            }
        }
        .navigationTitle("Settings View")
        .padding()
    }
}

#Preview {
    SettingsView()
}
