//
//  LatestView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct LatestView: View {
    @StateObject var vm: ProductViewModel
    
    var imageW: CGFloat = 120
    var imageH: CGFloat = 165
    var vStackSpacing: CGFloat? = 8
    var nameF: CGFloat? = 10
    
    
    var body: some View {
        VStack {
            ViewAllRow(text: "Latest", goToDetail: false)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(vm.latestResponse!, id: \.self) { latest in
                        UniversalGoodCell(latest: latest,
                                 imageW: imageW,
                                 imageH: imageH,
                                 vStackSpacing: vStackSpacing,
                                 nameF: nameF)
                    }
                }
            }
            .onAppear { vm.getLatest() }
            
            Spacer()
        }
    }
}
