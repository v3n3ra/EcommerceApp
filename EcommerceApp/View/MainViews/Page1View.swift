//
//  Page1View.swift
//  EcommerceApp
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct Page1View: View {
    @StateObject var vm: ProductViewModel
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            VStack {
                TopBar()
                    .padding(.bottom, -25)
                
                ScrollView {
                    SearchBar()
                        .frame(width: 300)
                        .padding(.bottom, -20)
                    TypeBar()
                        .padding(.bottom, 7)
                    
                    if vm.latestResponse != nil && vm.flashSaleResponse != nil {
                        Group {
                            LatestView(vm: vm)
                                .padding(.leading, 7)
                            FlashSaleView(vm: vm)
                                .padding(.leading, 7)
                        }
                    } else {
                        VStack {
                            ViewAllRow(text: "Latest", goToDetail: false)
                            GradientAnimationView(spacing: 15, width: UIConstants.width/3-15, height: UIConstants.height/5, cornerRad: 10)
                            ViewAllRow(text: "Flash Sale", goToDetail: true)
                            GradientAnimationView(spacing: 11, width: UIConstants.width/2-13, height: UIConstants.height/3.5, cornerRad: 13)
                        }
                    }
                    
                    BrandView()
                    
                    Rectangle()
                        .frame(width: UIConstants.width, height: UIConstants.height/16)
                        .foregroundColor(Color("background"))
                }
            }
        }
    }
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        Page1View(vm: ProductViewModel())
    }
}
