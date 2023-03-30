//
//  EMTestTaskVenera_kApp.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

@main
struct EMTestTaskVenera_kApp: App {
    @State var isActive = false
    var body: some Scene {
        WindowGroup {
//            ContentView(rootIsActive: $isActive)
            SignUpView()
        }
    }
}
