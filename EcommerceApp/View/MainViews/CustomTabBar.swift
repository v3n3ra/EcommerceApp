//
//  CustomTabBar1.swift
//  EcommerceApp
//
//  Created by V K on 29.03.2023.
//

import SwiftUI

struct CustomTabBar: View {
    @EnvironmentObject var vm: ProductViewModel
    
    private let imagesArray = ["home", "heart", "cart", "chat", "profile"]
    
    @State private var selectedIndex = 0
    
    var body: some View {
        ZStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    Page1View(vm: vm)
                case 1:
                    GradientPlaceholderCell()
                case 2:
                    GradientPlaceholderCell()
                case 3:
                    GradientPlaceholderCell()
                case 4:
                    ProfileView()
                default:
                    Page1View(vm: vm)
                }
            }
            
            VStack {
                Spacer()
                
                ZStack {
                    Rectangle()
                        .frame(width: UIConstants.width, height: UIConstants.height/10)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    
                    HStack {
                        ForEach(0..<5) { section in
                            Button {
                                selectedIndex = section
                            } label: {
                                Spacer()
                                
                                ZStack {
                                    Circle()
                                        .frame(width: UIConstants.width/8)
                                        .foregroundColor(Color("tabBarSelection")).opacity(selectedIndex == section ? 0.2 : 0)
                                    
                                    Image(imagesArray[section])
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIConstants.width/18)
                                }
                                Spacer()
                            }
                        }
                    }
                }
                .frame(height: UIConstants.height/37)
            }
        }
        .transaction({ transaction in
            transaction.animation = nil
        })
        .toolbar(.hidden, for: .automatic)
    }
}


struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
            .environmentObject(ProductViewModel())
    }
}
