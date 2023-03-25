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
            LazyHStack(spacing: 17) {
                ForEach(ProductType.allCases, id: \.self) { type in
                    VStack {
                        Button {
                            //
                        } label: {
                                ZStack {
                                    Circle()
                                        .fill(Color(.lightGray).opacity(0.2))
                                        .frame(width: 60)
                                    Image(type.rawValue)
                                        .resizable()
                                        .renderingMode(.template)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 32)
                                }
                                .frame(width: 50)
                        }
                        .foregroundColor(.black)
                        Text(type.rawValue)
                            .font(.system(size: 12))
                            .fontWeight(.semibold)
                            .frame(width: 75)
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
