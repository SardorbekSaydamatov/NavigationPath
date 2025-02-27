//
//  AdditionalView.swift
//  ViewChanging with cases
//
//  Created by Sardorbek Saydamatov on 17/10/24.
//

import SwiftUI

struct AdditionalView: View {
    
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
            
            Button("Go to Another View") {
                navigationManager.navigateTo(.anotherView)
            }
            
            Button("Go to Detail View") {
                navigationManager.navigateTo(.detail)
            }
        }
        .navigationTitle("Additional View")
        .padding()
    }
}

#Preview {
    AdditionalView()
}
