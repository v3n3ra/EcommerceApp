//
//  ProfileView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("Profile")
                    .font(.montserratBold(size: 16))
                
//                ZStack {
                    Circle()
                        .foregroundColor(Color(.darkGray))
                        .frame(width: 70)
//                    Image("profile")
//                        .resizable()
//                        .frame(width: 65)
//                        .scaledToFit()
//                        .clipShape(Circle())
                        
//                }
                Button {
                    //
                } label: {
                    Text("Change photo")
                        .font(.montserratMedium(size: 9))
                }
                .foregroundColor(Color(.darkGray))
                .font(.montserratMedium(size: 28))
                .padding(.bottom, 17)
                
                Text("Satria Adhi Pradana")
                    .font(.montserratBold(size: 17))
                    .padding(.bottom, 33)
                
                Button {
                    //
                } label: {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                        Text("         Upload item")
                    }
                    .fontWeight(.medium)
                    .padding(.leading, -60)
                }
                .frame(width: 320, height: 45)
                .foregroundColor(.white)
                .background(Color("customBlue"), in: RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 13)
                
                VStack(spacing: 20) {
                    ProfileHelperView(text: "Trade store", rightElement: "arrow")
                    ProfileHelperView(text: "Payment method", rightElement: "arrow")
                    ProfileHelperView(text: "Balance", rightElement: "$ 1593")
                    ProfileHelperView(text: "Trade history", rightElement: "arrow")
                    ProfileHelperView(icon: "restore", text: "Restore Purchase", rightElement: "arrow")
                    ProfileHelperView(icon: "help", text: "Help")
                    ProfileHelperView(icon: "logOut", text: "Log out")
                }
                
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
/*arrow
 folder
 logOut
 help
 restore*/