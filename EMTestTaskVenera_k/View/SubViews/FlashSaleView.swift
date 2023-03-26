//
//  FlashSaleView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct FlashSaleView: View {
    @StateObject var vm = ProductViewModel()
    //1.375
    var imageW: CGFloat = 185
    var imageH: CGFloat = 254
    var discountW: CGFloat = 80
    var discountH: CGFloat = 28
    var catW:   CGFloat = 45
    var catH:   CGFloat = 15
    var nameW:  CGFloat = 100
    
    var cornerRad: CGFloat? = 13
    var catCornerRad: CGFloat? = 15
    var discountCornerRad: CGFloat? = 15
    var vStackSpacing: CGFloat? = 10
    
    var discountF: CGFloat? = 16
    var catF:    CGFloat? = 7
    var nameF:   CGFloat? = 10
    var priceF:  CGFloat? = 9
    var buttonF: CGFloat? = 20
    
    var buttonPad: CGFloat? = 80
    var vStackPad: CGFloat? = 21
    var hStackPad: CGFloat? = 4
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Text("Flash Sale")
                    .font(.montserratSemiBold(size: 18))
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("View all")
                        .font(.montserratSemiBold(size: 11))
                }
                .foregroundColor(.gray)
            }
            .padding(.horizontal, 7)
            .padding(.bottom, -5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 11) {
                    ForEach(vm.flashSaleResponse, id: \.self) { flashSale in
                        UniversalGoodCell(flashSale: flashSale,
                                          imageW: imageW,
                                          imageH: imageH,
                                          discountW: discountW,
                                          discountH: discountH,
                                          catW: catW,
                                          catH: catH,
                                          nameW: nameW,
                                          cornerRad: cornerRad,
                                          catCornerRad: catCornerRad,
                                          discountCornerRad: discountCornerRad,
                                          vStackSpacing: vStackSpacing,
                                          discountF: discountF,
                                          catF: catF,
                                          nameF: nameF,
                                          priceF: priceF,
                                          buttonF: buttonF,
                                          buttonPad: buttonPad,
                                          vStackPad: vStackPad,
                                          hStackPad: hStackPad)
                    }
                }
            }
            .onAppear { vm.getFlashSale(); vm.getLatest() }
            
            Spacer()
        }
    }
}

struct FlashSaleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea().opacity(0.4)
            FlashSaleView(vm: ProductViewModel())
        }
    }
}
