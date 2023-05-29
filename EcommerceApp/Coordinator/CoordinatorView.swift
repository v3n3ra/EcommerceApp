//
//  CoordinatorView.swift
//  EcommerceApp
//
//  Created by V K on 30.03.2023.
//

import SwiftUI

struct CoordinatorView: View {
    @StateObject private var coordinator = Coordinator()
    @StateObject private var vm = ProductViewModel()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(.signUp)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page)
                }
        }
        .environmentObject(coordinator)
        .environmentObject(vm)
    }
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
