//
//  BrandView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 26.03.2023.
//

import SwiftUI

struct BrandView: View {
    var body: some View {
        VStack {
            ViewAllRow(text: "Brands", goToDetail: false)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 2) {
                    ForEach(Brand.allCases, id: \.self) { brand in
                        
                        Image(brand.rawValue)
                            .resizable()
                            .scaledToFill()
                            .frame(width: Helpers.width/3-15, height: Helpers.height/5)
                            .cornerRadius(15)
                        
                        Spacer()
                    }
                }
            }
            .padding(.leading, 7)
        }
    }
}

struct BrandView_Previews: PreviewProvider {
    static var previews: some View {
        BrandView()
    }
}
