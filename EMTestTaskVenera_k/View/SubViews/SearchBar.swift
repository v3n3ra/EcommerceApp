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
            Color("searchBarBackground")
                .frame(height: 28)
                .cornerRadius(37)
            
            HStack {

                TextField("What are you looking for ?", text: $text)
                    .font(.montserratSemiBold(size: 11))
                    .padding(.leading, Helpers.width/12.3)
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(.darkGray))
                    .font(.system(size: 12))
            }
            .padding()
        }
        .padding()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("background")
            SearchBar()
        }
    }
}
