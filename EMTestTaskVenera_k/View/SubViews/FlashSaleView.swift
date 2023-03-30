//
//  FlashSaleView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct FlashSaleView: View {
    @StateObject var vm: ProductViewModel
    
    var imageW: CGFloat = Helpers.width/2-13
    var imageH: CGFloat = Helpers.height/3.5
    var vStackSpacing: CGFloat? = 10
    var nameF: CGFloat? = 13
    
    
    var body: some View {
        VStack {
            Spacer()
            
            ViewAllRow(text: "Flash Sale")
            
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
