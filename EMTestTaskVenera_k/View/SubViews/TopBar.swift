//
//  TopBar.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct TopBar: View {
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
                Circle()
                    .frame(width: 30)
                HStack {
                    Text("Location")
                        .font(.montserratMedium(size: 10))
                    Image(systemName: "arrow.down")
                }
                .font(.system(size: 10))
            }
            .foregroundColor(Color(.darkGray))
        }
        .padding()
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("background")
            TopBar()
        }
    }
}
