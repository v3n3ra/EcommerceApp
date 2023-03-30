//
//  GradientPlaceholderCell.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 27.03.2023.
//

import SwiftUI

struct GradientPlaceholderCell: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("tabBarSelection"), .white]), startPoint: .bottomLeading, endPoint: .topTrailing)
            .ignoresSafeArea()
    }
}


struct GradientPlaceholderCell_Previews: PreviewProvider {
    static var previews: some View {
        GradientPlaceholderCell()
    }
}
