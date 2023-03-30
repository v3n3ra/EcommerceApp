//
//  TopBar.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct TopBar: View {
    @Binding var rootIsActive: Bool
    @Binding var rootIsActive2: Bool
    
    var body: some View {
        HStack(alignment: .top) {
            Button {
                //
            } label: {
                Image(systemName: "text.justify")
                    .fontWeight(.black)
                    .font(.system(size: 27))
            }
            .foregroundColor(.black)
            
            Spacer()
            
            HStack {
                Text("Trade by")
                Text("bata")
                    .foregroundColor(Color("customBlue"))
            }
            .font(.montserratBlack(size: 23))
            .fontWeight(.bold)
            
            Spacer()
            
            VStack {
                NavigationLink(destination: ProfileView(shouldPopToRoot: $rootIsActive, shouldPopToRoot2: $rootIsActive2)) {
                    ZStack {
                        Circle()
                        Image("doggo")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: Helpers.width/13)
                    }
                }
                .isDetailLink(false)
                .navigationTitle("")
                
                HStack {
                    Text("Location")
                        .font(.montserratMedium(size: 12))
                    Image("arrow.down")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Helpers.width/22)
                        .padding(.leading, -8)
                }
                .font(.system(size: 10))
            }
            .foregroundColor(Color(.darkGray))
        }
        .frame(height: Helpers.height/16)
        .padding()
    }
}


struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("background")
            TopBar(rootIsActive: .constant(false), rootIsActive2: .constant(false))
        }
    }
}
