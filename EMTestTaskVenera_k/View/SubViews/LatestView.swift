//
//  LatestView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct LatestView: View {
    @StateObject var vm = ProductViewModel()
    var body: some View {
        
        VStack {
            HStack {
                Text("Flash Sale")
                    .font(.system(size: 20))
                
                Spacer()
                
                Text("View all")
            }

            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 17) {
                    ForEach(vm.latestResponse, id: \.self) { latest in
                        UniversalGoodCell(latest: latest)
                    }
                }
            }
            .onAppear { vm.getLatest() }
        }
    }
}

struct LatestView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea().opacity(0.2)
            LatestView(vm: ProductViewModel())
        }
    }
}
