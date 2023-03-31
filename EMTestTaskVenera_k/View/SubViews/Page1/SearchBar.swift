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
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(width: Helpers.width/1.3, height: 28)
                        .foregroundColor(Color("searchBarBackground"))
                        .cornerRadius(37)
                    TextField("What are you looking for ?", text: $text)
                        .frame(height: 28)
                        .font(.montserratMedium(size: 11))
                        .padding(.leading, Helpers.width/5.3)
                    
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
