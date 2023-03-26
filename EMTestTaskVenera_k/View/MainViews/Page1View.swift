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
//            Color.black.ignoresSafeArea().opacity(0.3)
            
            VStack {
                TopBar()
                    .padding(.bottom, -30)
                ScrollView {
                    SearchBar()
                        .frame(width: 300)
                        .padding(.bottom, -20)
                    TypeBar()
                        .padding(.bottom, 7)
                    LatestView()
                        .padding(.leading, 7)
                    FlashSaleView()
                        .padding(.leading, 7)
                }
            }
        }
    }
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
//        ZStack {
//            Color.black.ignoresSafeArea().opacity(0.3)}
        Page1View()
        
    }
    
}
