//
//  NavigationManager.swift
//  ViewChanging with cases
//
//  Created by Sardorbek Saydamatov on 17/10/24.
//

import Foundation
import SwiftUI
import Combine

class NavigationManager: ObservableObject {
    @Published var navPath = NavigationPath()
    private var pathStack = [Destination]()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupNavBarChange()
    }

    private func setupNavBarChange() {
        $navPath.sink { [weak self] path in
            self?.syncPath(with: path)
        }
        .store(in: &cancellables)
    }
    
    func navigateTo(_ destination: Destination) {
        if let index = pathStack.firstIndex(of: destination) {
            popTo(index: index)
        } else {
            pathStack.append(destination)
            navPath.append(destination)
        }
    }

    private func popTo(index: Int) {
        let removeCount = pathStack.count - index - 1
        navPath.removeLast(removeCount)
    }

    func popToRoot() {
        navPath.removeLast(navPath.count)
    }
    
    func syncPath(with path: NavigationPath) {
        if path.count < pathStack.count {
            let removeCount = pathStack.count - path.count
            pathStack.removeLast(removeCount)
        }
    }
}
