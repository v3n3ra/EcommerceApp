//
//  Page2View.swift
//  EcommerceApp
//
//  Created by V K on 30.03.2023.
//

import SwiftUI

struct Page2View: View {
//    @StateObject var vm: ProductViewModel
    @EnvironmentObject var vm: ProductViewModel

    @State private var selectedIndex = 0
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                ImageSelector(vm: vm)
                
                DetailProductInfo(vm: vm)
                    .padding(.bottom)
                
                AddToCardTab(vm: vm)
            }
        }
        // used custom back button for consistency
        .toolbar {
            CustomBackButton()
        }
    }
}

struct Page2View_Previews: PreviewProvider {
    static var previews: some View {
        Page2View()
            .environmentObject(ProductViewModel())
    }
}
