//
//  AsyncImageCell.swift
//  EcommerceApp
//
//  Created by V K on 30.03.2023.
//

import SwiftUI

struct AsyncImageCell: View {
    let imageUrl: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            AsyncImage(url: URL(string: imageUrl)) { image in
                image
                    .resizable()
                    .frame(width: UIConstants.width/1.2, height: UIConstants.height/3)
                    .scaledToFill()
                    .cornerRadius(13)
                    .offset(x: -UIConstants.width/11)
            } placeholder: {
                Color("background")
                    .frame(width: UIConstants.width/1.2, height: UIConstants.height/3)
                    .cornerRadius(13)
                    .offset(x: -UIConstants.width/11)
            }
            
            VStack {
                ZStack {
                    Rectangle()
                        .frame(width: UIConstants.width/9, height: UIConstants.height/8.5)
                        .foregroundColor(Color("buttonBlue"))
                        .cornerRadius(14)
                    VStack {
                        Button {
                            //
                        } label: {
                            Image("buttonHeart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: UIConstants.width/20)
                                .padding(.bottom, UIConstants.height/70)
                        }
                        
                        Image(systemName: "minus")
                            .foregroundColor(Color(.darkGray))
                            .padding(.bottom, UIConstants.height/250)
                        
                        Button {
                            //
                        } label: {
                            Image("share")
                                .resizable()
                                .scaledToFit()
                                .frame(width: UIConstants.width/20)
                        }
                    }
                }
                .offset(x: UIConstants.width/1.48, y: UIConstants.height/11)
            }
        }
    }
}
