//
//  GradientAnimationView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 26.03.2023.
//

import SwiftUI

struct GradientAnimationView: View {
    @State private var animateGradient = false
    
    var spacing: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var cornerRad: CGFloat?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: spacing) {
                ForEach(1..<5) {_ in
                    LinearGradient(colors: [Color(.white), Color(.lightGray)],
                                   startPoint: animateGradient ? .top : .topTrailing,
                                   endPoint: animateGradient ? .bottomLeading : .trailing)
                    .frame(width: width, height: height)
                    .scaledToFill()
                    .cornerRadius(cornerRad!)
                    .onAppear {
                        withAnimation(.linear(duration: 2.5).repeatForever(autoreverses: true)) {
                            animateGradient.toggle()
                        }
                    }
                }
            }
            .padding(.leading, 7)
        }
    }
}

struct GradientAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        GradientAnimationView(spacing: 15, width: 100, height: 150, cornerRad: 16)
    }
}
