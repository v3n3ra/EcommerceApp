//
//  ProductModel.swift
//  testTaskVenera_kp
//
//  Created by V K on 21.03.2023.
//

import Foundation

struct LatestModel: Codable {
    var latest: [Latest]
}
struct FlashSaleModel: Codable {
    var flash_sale: [FlashSale]
}

struct Latest: Codable, Hashable {
    var category: String
    var name: String
    var price: Int
    var image_url: String
}

struct FlashSale: Codable, Hashable {
    var category: String
    var name: String
    var price: Float
    var discount: Int
    var image_url: String
}

enum ProductType: String, CaseIterable {
    case Phones, Headphones, Games, Cars, Furniture, Kids
}

enum Brand: String, CaseIterable {
    case BMW, XBox, Sony, Samsung, Reebok, NewBalance
}
