//
//  Page1View.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct Page1View: View {
    @StateObject private var vm = ProductViewModel()
    
    @Binding var rootIsActive: Bool
    @Binding var rootIsActive2: Bool
    @State var isPresenting = false
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            VStack {
                TopBar(rootIsActive: $rootIsActive, rootIsActive2: $rootIsActive2)
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
                            ViewAllRow(text: "Latest")
                            GradientAnimationView(spacing: 15, width: Helpers.width/3-15, height: Helpers.height/5, cornerRad: 10)
                            ViewAllRow(text: "Flash Sale")
                            GradientAnimationView(spacing: 11, width: Helpers.width/2-13, height: Helpers.height/3.5, cornerRad: 13)
                        }
                    }
                    
                    BrandView()
                    
                    Rectangle()
                        .frame(width: Helpers.width, height: Helpers.height/16)
                        .foregroundColor(Color("background"))
                }
            }
        }
    }
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        Page1View(rootIsActive: .constant(false), rootIsActive2: .constant(false))
    }
}
