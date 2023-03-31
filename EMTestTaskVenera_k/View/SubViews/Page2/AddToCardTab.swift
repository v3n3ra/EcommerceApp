//
//  AddToCardTab.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 31.03.2023.
//

import SwiftUI

struct AddToCardTab: View {
    @StateObject var vm: ProductViewModel
    
    @State private var totalPrice = 0
    
    var body: some View {
        
        if vm.latestResponse != nil {
            ZStack(alignment: .top) {
                Rectangle()
                    .foregroundColor(Color("addToCartBackground"))
                    .frame(height: Helpers.height/6)
                    .cornerRadius(30)
                
                HStack {
                    VStack {
                        Text("Quantity:")
                            .foregroundColor(.white).opacity(0.6)
                            .font(.montserratMedium(size: 11))
                            .offset(x: -Helpers.width/13)
                        
                        HStack {
                            Button {
                                if totalPrice != 0 {
                                    totalPrice -= vm.detailResponse!.price
                                }
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("customBlue"))
                                        .frame(width: Helpers.width/9, height: Helpers.width/15)
                                        .cornerRadius(9)
                                    Image(systemName: "minus")
                                        .font(.system(size: 13))
                                }
                            }
                            .foregroundColor(.white)
                            .padding(.trailing)
                            
                            Button {
                                totalPrice += vm.detailResponse!.price
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("customBlue"))
                                        .frame(width: Helpers.width/9, height: Helpers.width/15)
                                        .cornerRadius(9)
                                    
                                    Image(systemName: "plus")
                                        .font(.system(size: 13))
                                }
                            }
                            .foregroundColor(.white)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("customBlue"))
                            .frame(width: Helpers.width/2, height: Helpers.width/8)
                            .cornerRadius(19)
                        
                        HStack {
                            Text("$ \(totalPrice)")
                                .foregroundColor(.white)
                                .opacity(0.6)
                                .font(.montserratMedium(size: 10))
                                .padding(.trailing)
                                .frame(width: 45, height: 45)
                            Button {
                                //
                            } label: {
                                Text("ADD TO CART")
                                    .font(.montserratSemiBold(size: 10))
                            }
                            .foregroundColor(.white)
                            .padding(.leading)
                        }
                    }
                    .padding(.trailing)
                }
                .padding(.top, 25)
            }
            .onAppear { vm.getDetail() }
        }
    }
}

struct AddToCardTab_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardTab(vm: ProductViewModel())
    }
}
