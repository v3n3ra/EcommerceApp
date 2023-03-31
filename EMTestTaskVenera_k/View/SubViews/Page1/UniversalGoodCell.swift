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
    var vStackSpacing: CGFloat?
    var nameF: CGFloat?
    
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
            .cornerRadius(imageH!/20)
            
            ZStack {
                VStack {
                    if (flashSale != nil) {
                        HStack {
                            Spacer()
                            
                            Text("\(flashSale?.discount ?? 00)% off")
                                .font(.montserratSemiBold(size: imageH!/25))
                                .frame(width: imageW!/3, height: imageH!/12)
                                .background(Color(.red))
                                .cornerRadius(imageW!/20)
                        }
                        .padding(.trailing, 10)
                        
                    }
                    
                    Spacer()
                    
                    HStack {
                        VStack(alignment: .leading, spacing: vStackSpacing) {
                            
                            Text((flashSale != nil) ? flashSale!.category : latest!.category)
                                .font(.montserratBold(size: imageH!/25))
                                .frame(width: imageW!/3, height: imageH!/12)
                                .background(Color("categoryBackground")).opacity(0.8)
                                .cornerRadius(imageW!/10)
                                .foregroundColor(.black)
                            
                            Text((flashSale != nil) ? flashSale!.name : latest!.name)
                                .font(.montserratBold(size: nameF!))
                                .frame(height: imageH!/5)
                            
                            Text("$ \((flashSale != nil) ? String(format: "%.2f", flashSale!.price) : String(format: "%.3f", (Float(latest!.price))))")
                                .font(.montserratBold(size: imageH!/22))
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.leading, 5)
                        
                        
                        Spacer()
                        
                        VStack {
                            Spacer()
                            
                            HStack {
                                if (flashSale != nil) {
                                    Button {
                                        //
                                    } label: {
                                        ZStack {
                                            Circle()
                                                .foregroundColor(Color("buttonBlue"))
                                                .frame(width: imageH!/10)
                                            Image("buttonHeart")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: imageH!/16)
                                        }
                                        .padding(.trailing,-3)
                                    }
                                }
                                
                                Button {
                                    //
                                } label: {
                                    ZStack {
                                        Circle()
                                            .foregroundColor(Color("buttonBlue"))
                                            .frame(width: imageH!/6)
                                        
                                        Image("plus")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: imageH!/10)
                                    }
                                }
                            }
                            .padding(.trailing, 5)
                        }
                    }
                    .frame(height: imageH!/2.5)
                    .padding(.bottom, 8)
                }
                .foregroundColor(.white)
            }
            .padding(.top)
            .frame(width: imageW, height: imageH)
            .cornerRadius(imageH!/20)
        }
    }
}
