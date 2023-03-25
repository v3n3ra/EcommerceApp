//
//  FlashSaleView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct FlashSaleView: View {
    @StateObject var vm = ProductViewModel()
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Text("Flash Sale")
                    .font(.system(size: 20))
                
                Spacer()
                
                Text("View all")
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 17) {
                    ForEach(vm.flashSaleResponse, id: \.self) { flashSale in
                        UniversalGoodCell(flashSale: flashSale)
                    }
                }
            }.onAppear { vm.getFlashSale() }
            
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
