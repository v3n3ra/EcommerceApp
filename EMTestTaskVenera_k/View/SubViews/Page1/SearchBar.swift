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
            VStack {
                ZStack {
                    TextField("What are you looking for ?", text: $text)
                        .frame(height: 28)
                        .frame(maxWidth: .infinity)
                        .background(Color("searchBarBackground"))
                        .cornerRadius(37)
                        .font(.montserratSemiBold(size: 11))
                        .padding(.leading, Helpers.width/12.3)
                    
                    HStack {
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color(.darkGray))
                            .font(.system(size: 12))
                    }
                    .padding()
                }
            }
        }
        .padding()
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.opacity(0.3)
            SearchBar()
        }
    }
}
