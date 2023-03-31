//
//  ImageSelector.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 30.03.2023.
//

import SwiftUI

struct ImageSelector: View {
    @StateObject var vm: ProductViewModel
    
    @State private var selectedIndex = 1
    
    var body: some View {
        if vm.detailResponse != nil {
            VStack {
                ZStack {
                    switch selectedIndex {
                    case 0:
                        AsyncImageCell(imageUrl: vm.imageUrls![0])
                    case 1:
                        AsyncImageCell(imageUrl: vm.imageUrls![1])
                    case 2:
                        AsyncImageCell(imageUrl: vm.imageUrls![2])
                    default:
                        AsyncImageCell(imageUrl: vm.imageUrls![0])
                    }
                }
                .padding(.bottom)
                
                HStack {
                    ForEach(Array(zip(0..<3, vm.detailResponse!.image_urls)), id: \.0) { (selection, imageUrl) in
                        Button {
                            selectedIndex = selection
                        } label: {
                            AsyncImage(url: URL(string: imageUrl))
                            { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .clipped()
                            } placeholder: {
                                Color.white.opacity(0)
                            }
                            .frame(width: selectedIndex == selection ? Helpers.width/4.3 : Helpers.width/5.3, height: selectedIndex == selection ? Helpers.height/16 : Helpers.height/19)
                            .cornerRadius(7)
                            .clipped()
                            .shadow(color: Color(.darkGray), radius: selectedIndex == selection ? 4 : 0, y: selectedIndex == selection ? 4 : 0)
                        }
                    }
                    .onAppear { vm.getDetail() }
                }
            }
            .frame(height: Helpers.height/2)
        }
    }
}
//
//struct ImageSelector_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageSelector(vm: ProductViewModel())
//    }
//}
//
