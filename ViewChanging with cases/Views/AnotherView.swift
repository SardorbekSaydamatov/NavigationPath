//
//  AnotherView.swift
//  ViewChanging with cases
//
//  Created by Sardorbek Saydamatov on 17/10/24.
//

import SwiftUI

struct AnotherView: View {
    
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        VStack {
            Button("Pop to Root") {
                navigationManager.popToRoot()
            }
            
            Button("Go to Profile View") {
                navigationManager.navigateTo(.profile)
            }
            
            Button("Go to Settings View") {
                navigationManager.navigateTo(.settings)
            }
            
            Button("Go to Detail View") {
                navigationManager.navigateTo(.detail)
            }
            
            Button("Go to Additional View") {
                navigationManager.navigateTo(.additionalView)
            }
        }
        .navigationTitle("Another View")
    }
}

#Preview {
    AnotherView()
}
