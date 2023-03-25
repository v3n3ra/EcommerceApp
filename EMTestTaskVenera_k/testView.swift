//
//  testView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct testView: View {
    var flashSale: Int? = 30
    var body: some View {
        Image("wolf2")
            .resizable()
            .scaledToFill()
            .clipped()
            .frame(width: 350, height: 450)
            .cornerRadius(28)
        ZStack {
            VStack {
                if (flashSale != nil) {
                    HStack {
                        Spacer()
                        
                        Text("\(flashSale ?? 00)% off")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .frame(width: 80, height: 28)
                            .background(Color(.red))
                            .cornerRadius(15)
                    }
                }
                
                Spacer()
                HStack {
                    VStack(alignment: .leading, spacing: 17) {
                        Text("Cat")
                            .fontWeight(.bold)
                            .frame(width: 110, height: 30)
                            .background(Color("categoryBackground"))
                            .cornerRadius(15)
                            .foregroundColor(.black)
                        
                        Text("Name NameName NameNameN")
                            .frame(width: 200, alignment: .leading)
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("$ Price")
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 53))
                    }
                    .padding(.bottom, -80)
                }
            }
            .foregroundColor(.white)
            .padding(.horizontal, 15)
            .padding(.vertical)
        }
        .frame(width: 350, height: 450)
        .cornerRadius(28)
    }
}


struct testView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea().opacity(0.35)
            testView()}
        
    }
}
