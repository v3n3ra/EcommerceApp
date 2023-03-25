//
//  SearchView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct SearchBar: View {
    @State private var text: String = ""
    var body: some View {
        ZStack(alignment: .center) {
            Color.gray.opacity(0.2)
                .frame(width: .infinity, height: 36)
                .cornerRadius(37)
            
            HStack {
                TextField("What are you looking for ?", text: $text)
                    .font(.custom("Montserrat", size: 15))
                    .fontWeight(.black)
                    
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(.darkGray))
//                    .font(.system(size: 20))
                    
            }
            .padding()
        }
        .padding()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
