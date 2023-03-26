//
//  ImageCell.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 26.03.2023.
//

import SwiftUI

struct ImageCell: View {
    var flashSale: FlashSale?
    var latest: Latest?
    
    var body: some View {
        AsyncImage(url: URL(string: (flashSale != nil) ? flashSale!.image_url : latest!.image_url)) { image in
            image
                .resizable()
                .scaledToFill()
                .clipped()
        } placeholder: {
            Color.white.opacity(0)
        }
//        .onAppear { }
//        .frame(width: 350, height: 400)
        .cornerRadius(28)
    }
}

//struct ImageCell_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageCell()
//    }
//}
