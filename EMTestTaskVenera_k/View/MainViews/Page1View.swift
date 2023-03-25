//
//  Page1View.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct Page1View: View {
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            
            VStack {
                TopBar()
                SearchBar()
                    .frame(width: 300)
                TypeBar()
                LatestView()
                
            }
        }
//        .frame(height: 400)
//            Text("Flash Sale")
//            FlashSaleView()
        
    }
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
            Page1View()
    }
}
