//
//  ViewAllRow.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 26.03.2023.
//

import SwiftUI

struct ViewAllRow: View {
    var text: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.montserratSemiBold(size: 18))
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("View all")
                    .font(.montserratSemiBold(size: 11))
            }
            .foregroundColor(.gray)
        }
        .padding(.horizontal, 9)
        .padding(.bottom, -5)
    }
}

struct ViewAllRow_Previews: PreviewProvider {
    static var previews: some View {
        ViewAllRow(text: "Latest")
    }
}
