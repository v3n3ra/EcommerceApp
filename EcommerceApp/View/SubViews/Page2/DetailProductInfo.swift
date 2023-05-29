//
//  DetailProductInfo.swift
//  EcommerceApp
//
//  Created by V K on 31.03.2023.
//

import SwiftUI

struct DetailProductInfo: View {
    @StateObject var vm: ProductViewModel
    
    var body: some View {
        if vm.detailResponse != nil {
            VStack {
                HStack {
                    Text(vm.detailResponse!.name)
                        .font(.montserratBold(size: 20))
                        .lineSpacing(7)
                    
                    Spacer()
                    
                    Text("$ \(vm.detailResponse!.price)")
                        .font(.montserratSemiBold(size: 16))
                }
                .padding(.horizontal)
                .padding(.bottom, 9)
                
                Text(vm.detailResponse!.description)
                    .lineSpacing(4)
                    .font(.montserratSemiBold(size: 10))
                    .foregroundColor(.gray)
                    .frame(width: UIConstants.width/1.8, height: 40)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.bottom)
                
                HStack {
                    Image(systemName: "star")
                        .font(.system(size: 12))
                        .foregroundColor(.yellow)
                    Text("\(String(format: "%g", vm.detailResponse!.rating))")
                        .font(.montserratBold(size: 11))
                    Text("(\(vm.detailResponse!.number_of_reviews) reviews)")
                        .font(.montserratMedium(size: 11))
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.leading)
                .padding(.bottom)
                
                VStack {
                    Text("Color:")
                        .font(.montserratSemiBold(size: 12))
                        .offset(x: -UIConstants.width/8)
                    
                    HStack {
                        ForEach(vm.detailResponse!.colors, id: \.self) { color in
                            Button {
                                //
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .frame(width: UIConstants.width/11, height: UIConstants.width/14)
                                        .cornerRadius(9)
                                        .padding(.trailing, 5)
                                        .foregroundColor(.gray)
                                    
                                    Rectangle()
                                        .frame(width: UIConstants.width/12, height: UIConstants.width/15)
                                        .cornerRadius(8)
                                        .padding(.trailing, 5)
                                        .foregroundColor(Color(hex: color))
                                }
                            }   
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            }
            .onAppear { vm.getDetail() }
        }
    }
}

struct DetailProductInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailProductInfo(vm: ProductViewModel())
    }
}


//MARK: - Extension Color
extension Color {
    init(hex string: String) {
        var string: String = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        if string.hasPrefix("#") {
            _ = string.removeFirst()
        }

        // Double the last value if incomplete hex
        if !string.count.isMultiple(of: 2), let last = string.last {
            string.append(last)
        }

        // Fix invalid values
        if string.count > 8 {
            string = String(string.prefix(8))
        }

        // Scanner creation
        let scanner = Scanner(string: string)

        var color: UInt64 = 0
        scanner.scanHexInt64(&color)

        if string.count == 2 {
            let mask = 0xFF

            let g = Int(color) & mask

            let gray = Double(g) / 255.0

            self.init(.sRGB, red: gray, green: gray, blue: gray, opacity: 1)

        } else if string.count == 4 {
            let mask = 0x00FF

            let g = Int(color >> 8) & mask
            let a = Int(color) & mask

            let gray = Double(g) / 255.0
            let alpha = Double(a) / 255.0

            self.init(.sRGB, red: gray, green: gray, blue: gray, opacity: alpha)

        } else if string.count == 6 {
            let mask = 0x0000FF
            let r = Int(color >> 16) & mask
            let g = Int(color >> 8) & mask
            let b = Int(color) & mask

            let red = Double(r) / 255.0
            let green = Double(g) / 255.0
            let blue = Double(b) / 255.0

            self.init(.sRGB, red: red, green: green, blue: blue, opacity: 1)

        } else if string.count == 8 {
            let mask = 0x000000FF
            let r = Int(color >> 24) & mask
            let g = Int(color >> 16) & mask
            let b = Int(color >> 8) & mask
            let a = Int(color) & mask

            let red = Double(r) / 255.0
            let green = Double(g) / 255.0
            let blue = Double(b) / 255.0
            let alpha = Double(a) / 255.0

            self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)

        } else {
            self.init(.sRGB, red: 1, green: 1, blue: 1, opacity: 1)
        }
    }
}

