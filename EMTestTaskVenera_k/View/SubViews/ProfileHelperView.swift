//
//  ProfileHelperView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct ProfileHelperView: View {
    var icon: String?
    var text: String
    var rightElement: String?
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .foregroundColor(.gray).opacity(0.2)
                    .frame(width: Helpers.width/10)
                    
                if (icon != nil) {
                    Image(icon!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 23)
                } else {
                    Image("folder")
                }
            }
            
            Text(text)
                .font(.montserratMedium(size: Helpers.width/27))
            
            Spacer()
            
            if (rightElement != nil) && rightElement!.first! == "$" {
                Text(rightElement!)
                    .font(.montserratMedium(size: Helpers.width/28))
            } else if rightElement != nil {
                Button {
                    //
                } label: {
                    Image(rightElement!)
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: Helpers.width/25)
            } 
        }
        .padding(.horizontal, Helpers.width/10)
        .padding(.bottom, Helpers.height/115)
    }
}

struct ProfileHelperView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHelperView(icon: "logOut", text: "Trade Store", rightElement: "$ 1593")
    }
}

