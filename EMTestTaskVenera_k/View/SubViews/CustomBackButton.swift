//
//  CustomBackButton.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 27.03.2023.
//

import SwiftUI

struct CustomBackButton: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("")
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("back")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Helpers.width/19)
                        .onTapGesture {
                            self.dismiss()
                        }
                }
            }
    }
}
