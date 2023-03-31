//
//  AsyncImageCell.swift
//  EMTestTaskVenera_k
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
                    .frame(width: Helpers.width/1.2, height: Helpers.height/3)
                    .scaledToFill()
                    .cornerRadius(13)
                    .offset(x: -Helpers.width/11)
            } placeholder: {
                Color("background")
                    .frame(width: Helpers.width/1.2, height: Helpers.height/3)
                    .cornerRadius(13)
                    .offset(x: -Helpers.width/11)
            }
            
            VStack {
                ZStack {
                    Rectangle()
                        .frame(width: Helpers.width/9, height: Helpers.height/8.5)
                        .foregroundColor(Color("buttonBlue"))
                        .cornerRadius(14)
                    VStack {
                        Button {
                            //
                        } label: {
                            Image("buttonHeart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: Helpers.width/20)
                                .padding(.bottom, Helpers.height/70)
                        }
                        
                        Image(systemName: "minus")
                            .foregroundColor(Color(.darkGray))
                            .padding(.bottom, Helpers.height/250)
                        
                        Button {
                            //
                        } label: {
                            Image("share")
                                .resizable()
                                .scaledToFit()
                                .frame(width: Helpers.width/20)
                        }
                    }
                }
                .offset(x: Helpers.width/1.48, y: Helpers.height/11)
            }
        }
    }
}
