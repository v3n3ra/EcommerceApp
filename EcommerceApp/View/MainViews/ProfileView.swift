//
//  ProfileView.swift
//  EcommerceApp
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("Profile")
                    .font(.montserratBold(size: UIConstants.width/25))
                ZStack {
                    Circle()
                        .foregroundColor(Color(.darkGray))
                        .frame(width: 70)
                    
                    Image("doggo")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 68)
                }
                
                Button {
                    //
                } label: {
                    Text("Change photo")
                        .font(.montserratMedium(size: 9))
                }
                .foregroundColor(Color(.darkGray))
                .font(.montserratMedium(size: UIConstants.width/26))
                .padding(.bottom, 17)
                
                Text("Satria Adhi Pradana")
                    .font(.montserratBold(size: 17))
                    .padding(.bottom, 33)
                
                Button {
                    //
                } label: {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                            .fontWeight(.bold)
                            .font(.system(size: UIConstants.width/30))
                        Text("Upload item")
                            .font(.montserratSemiBold(size: UIConstants.width/28))
                            .padding(.leading, UIConstants.width/11)
                    }
                    .padding(.leading, -60)
                }
                .frame(width: UIConstants.width/1.3, height: 45)
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
                    
                    ZStack {
                        Button {
                                coordinator.popToRoot()
                        } label: {
                            ProfileHelperView(icon: "logOut", text: "Log out").foregroundColor(.black)
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.top, UIConstants.width/20)
        }
        .toolbar {
            CustomBackButton()
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
