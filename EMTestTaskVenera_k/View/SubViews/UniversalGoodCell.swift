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
            .frame(width: 350, height: 450)
            .cornerRadius(28)
            
            ZStack {
                VStack {
                    if (flashSale != nil) {
                        HStack {
                            Spacer()
                            
                            Text("\(flashSale?.discount ?? 00)% off")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .frame(width: 80, height: 28)
                                .background(Color(.red))
                                .cornerRadius(15)
                        }
                    }
                    Spacer()
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 17) {
                            Text((flashSale != nil) ? flashSale!.category : latest!.category)
                                .fontWeight(.bold)
                                .frame(width: 110, height: 30)
                                .background(Color("categoryBackground"))
                                .cornerRadius(15)
                                .foregroundColor(.black)
                            
                            Text((flashSale != nil) ? flashSale!.name : latest!.name)
                                .frame(width: 200, alignment: .leading)
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("$ \((flashSale != nil) ? String(format: "%g", flashSale!.price) : String(format: "%g", (Double(latest!.price))))")
                                .fontWeight(.bold)
                        }
                        Spacer()
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 53))
                        }
                        .padding(.bottom, -80)
                    }
                }
                .foregroundColor(.white)
                .padding(.horizontal, 15)
                .padding(.vertical)
            }
            .frame(width: 350, height: 450)
            .cornerRadius(28)
        }
    }
}

//struct UniversalGoodCell_Previews: PreviewProvider {
//    static var previews: some View {
//        UniversalGoodCell()
//    }
//}
