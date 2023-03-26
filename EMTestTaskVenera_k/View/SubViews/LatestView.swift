//
//  LatestView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct LatestView: View {
    @StateObject var vm = ProductViewModel()
    
    var imageW: CGFloat = 120
    var imageH: CGFloat = 165
    var catW:   CGFloat = 45
    var catH:   CGFloat = 15
    var nameW:  CGFloat = 100
    
    var cornerRad: CGFloat? = 13
    var catCornerRad: CGFloat? = 15
    var vStackSpacing: CGFloat? = 8
    
    var catF:    CGFloat? = 7
    var nameF:   CGFloat? = 10
    var priceF:  CGFloat? = 9
    var buttonF: CGFloat? = 20
    
    var buttonPad: CGFloat? = 80
    var vStackPad: CGFloat? = 21
    var hStackPad: CGFloat? = 4
    
    var body: some View {
        VStack {
            HStack {
                Text("Latest")
                    .font(.montserratSemiBold(size: 18))
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("View all")
                        .font(.montserratSemiBold(size: 11))
                }
                .foregroundColor(.gray)
            }
            .padding(.horizontal, 7)
            .padding(.bottom, -5)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(vm.latestResponse, id: \.self) { latest in
                        UniversalGoodCell(latest: latest,
                                          imageW: imageW,
                                          imageH: imageH,
                                          catW: catW,
                                          catH: catH,
                                          nameW: nameW,
                                          cornerRad: cornerRad,
                                          catCornerRad: catCornerRad,
                                          vStackSpacing: vStackSpacing,
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
            .onAppear { vm.getLatest(); vm.getFlashSale() }
            
            Spacer()
        }
    }
}

struct LatestView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
//            Color("background").ignoresSafeArea()
            Color.black.ignoresSafeArea().opacity(0.3)
            LatestView(vm: ProductViewModel())
        }
    }
}
