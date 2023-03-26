//
//  TypeTopBar.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct TypeBar: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 2) {
                ForEach(ProductType.allCases, id: \.self) { type in
                    VStack {
                        Button {
                            //
                        } label: {
                                ZStack {
                                    Circle()
                                        .fill(Color(.lightGray).opacity(0.2))
                                        .frame(width: 40)
                                    Image(type.rawValue)
                                        .resizable()
                                        .renderingMode(.template)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20)
                                }
                                .frame(width: 30)
                        }
                        .foregroundColor(.black)
                        Text(type.rawValue)
                            .font(.montserratSemiBold(size: 10))
                            .frame(width: 66)
                            .foregroundColor(Color(.lightGray))
                    }
                }
            }
        }
    }
}

struct TypeTopBar_Previews: PreviewProvider {
    static var previews: some View {
        TypeBar()
    }
}
