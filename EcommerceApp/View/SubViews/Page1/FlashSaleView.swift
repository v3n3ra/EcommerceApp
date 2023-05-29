//
//  FlashSaleView.swift
//  EcommerceApp
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct FlashSaleView: View {
    @StateObject var vm: ProductViewModel
    
    var imageW: CGFloat = UIConstants.width/2-13
    var imageH: CGFloat = UIConstants.height/3.5
    var vStackSpacing: CGFloat? = 10
    var nameF: CGFloat? = 13
    
    var body: some View {
        VStack {
            Spacer()
            
            ViewAllRow(text: "Flash Sale", goToDetail: true)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 11) {
                    ForEach(vm.flashSaleResponse!, id: \.self) { flashSale in
                        UniversalGoodCell(flashSale: flashSale,
                                 imageW: imageW,
                                 imageH: imageH,
                                 vStackSpacing: vStackSpacing,
                                 nameF: nameF)
                    }
                }
            }
            .onAppear { vm.getFlashSale() }
            
            Spacer()
        }
    }
}
