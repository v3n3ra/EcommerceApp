//
//  CustomTabBar1.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 29.03.2023.
//

import SwiftUI

struct CustomTabBar: View {
    let imagesArray = ["home", "heart", "cart", "chat", "profile"]
    
    @State private var selectedIndex = 0
    
    @Binding var rootIsActive: Bool
    @Binding var rootIsActive2: Bool
    
    var body: some View {
        ZStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    Page1View(rootIsActive: $rootIsActive, rootIsActive2: $rootIsActive2)
                case 1:
                    GradientPlaceholderCell()
                case 2:
                    GradientPlaceholderCell()
                case 3:
                    GradientPlaceholderCell()
                case 4:
                    ProfileView(shouldPopToRoot: $rootIsActive, shouldPopToRoot2: $rootIsActive2)
                default:
                    Page1View(rootIsActive: $rootIsActive, rootIsActive2: $rootIsActive2)
                }
            }
            
            VStack {
                Spacer()
                
                ZStack {
                    Rectangle()
                        .frame(width: Helpers.width, height: Helpers.height/10)
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
                                        .frame(width: Helpers.width/8)
                                        .foregroundColor(Color("tabBarSelection")).opacity(selectedIndex == section ? 0.2 : 0)
                                    
                                    Image(imagesArray[section])
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: Helpers.width/18)
                                }
                                Spacer()
                            }
                        }
                    }
                }
                .frame(height: Helpers.height/37)
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
        CustomTabBar(rootIsActive: .constant(false), rootIsActive2: .constant(false))
    }
}
