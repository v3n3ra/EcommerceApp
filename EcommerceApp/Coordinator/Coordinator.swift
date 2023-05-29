//
//  Coordinator.swift
//  EcommerceApp
//
//  Created by V K on 30.03.2023.
//

import SwiftUI

@MainActor
final class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var page: Page?
    
    @Published var vm = ProductViewModel()
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }

    @ViewBuilder
    func build(_ page: Page) -> some View {
        switch page {
        case .signUp:
            SignUpView()
        case .logIn:
            LogInView()
        case .profile:
            ProfileView()
        case .tabBar:
            CustomTabBar()
                .environmentObject(vm)
        case .detail:
            Page2View()
                .environmentObject(self.vm)
        }
    }
}


enum Page: String, CaseIterable, Identifiable {
    case signUp, logIn, profile, tabBar, detail
    
    var id: String { self.rawValue }
}
