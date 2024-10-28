//
//  ProfileView.swift
//  ViewChanging with cases
//
//  Created by Sardorbek Saydamatov on 14/10/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var navigationManager: NavigationManager

    var body: some View {
        VStack {
            Text("Profile View")
                .font(.largeTitle)
                .padding()

            Button("Pop to Root") {
                navigationManager.popToRoot()
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
            
            Button("Go to Additional View") {
                navigationManager.navigateTo(.additionalView)
            }
        }
        .navigationTitle("Profile View")
    }
}

#Preview {
    ProfileView()
}
