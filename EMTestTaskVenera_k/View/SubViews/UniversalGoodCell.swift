//
//  UniversalGoodCell.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct UniversalGoodCell: View {
    var latest: Latest?
    var flashSale: FlashSale?
    
    var imageW: CGFloat?
    var imageH: CGFloat?
    var discountW: CGFloat?
    var discountH: CGFloat?
    var catW:   CGFloat?
    var catH:   CGFloat?
    var nameW:  CGFloat?
    
    var cornerRad: CGFloat?
    var catCornerRad: CGFloat?
    var discountCornerRad: CGFloat?
    var vStackSpacing: CGFloat?
    
    var discountF: CGFloat?
    var catF:    CGFloat?
    var nameF:   CGFloat?
    var priceF:  CGFloat?
    var buttonF: CGFloat?
    
    var buttonPad: CGFloat?
    var vStackPad: CGFloat?
    var hStackPad: CGFloat?
    
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: (flashSale != nil) ? flashSale!.image_url : latest!.image_url)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .clipped()
            } placeholder: {
                Color.white.opacity(0)
            }
            .frame(width: imageW!, height: imageH!)
            .cornerRadius(cornerRad!)
            
            ZStack {
                VStack {
                    if (flashSale != nil) {
                        HStack {
                            Spacer()
                            
                            Text("\(flashSale?.discount ?? 00)% off")
                                .font(.montserratSemiBold(size: discountF!))
                                .frame(width: discountW!, height: discountH!)
                                .background(Color(.red))
                                .cornerRadius(discountCornerRad!)
                        }
                    }
                    Spacer()
                    
                    HStack {
                        VStack(alignment: .leading, spacing: vStackSpacing!) {
                            Text((flashSale != nil) ? flashSale!.category : latest!.category)
                                .font(.montserratBold(size: catF!))
                                .frame(width: catW!, height: catH!)
                                .background(Color("categoryBackground")).opacity(0.8)
                                .cornerRadius(catCornerRad!)
                                .foregroundColor(.black)
                            
                            Text((flashSale != nil) ? flashSale!.name : latest!.name)
                                .frame(width: nameW!, alignment: .leading)
                                .font(.montserratSemiBold(size: nameF!))
                            
                            Text("$ \((flashSale != nil) ? String(format: "3%g", flashSale!.price) : String(format: "3%g", (Double(latest!.price))))")
                                .font(.montserratBold(size: priceF!))
                        }
                        .padding(.leading, vStackPad)
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: buttonF!))
                        }
                        .padding(.trailing)
                        .padding(.bottom, -buttonPad!)
                    }
                    .padding(.bottom, hStackPad!)
                }
                .foregroundColor(.white)
            }
            .frame(width: imageW!, height: imageH!)
            .cornerRadius(cornerRad!)
        }
    }
}

//struct UniversalGoodCell_Previews: PreviewProvider {
//    static var previews: some View {
//        UniversalGoodCell()
//    }
//}
