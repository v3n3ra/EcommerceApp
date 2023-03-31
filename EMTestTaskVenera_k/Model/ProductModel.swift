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

struct DetailProduct: Codable, Hashable {
    let name: String
    let description: String
    let rating: Double
    let number_of_reviews: Int
    let price: Int
    let colors: [String]
    let image_urls: [String]

//    enum CodingKeys: String, CodingKey {
//        case name, description, rating
//        case numberOfReviews = "number_of_reviews"
//        case price, colors
//        case imageUrls = "image_urls"
//    }
}

enum ProductType: String, CaseIterable {
    case Phones, Headphones, Games, Cars, Furniture, Kids
}

enum Brand: String, CaseIterable {
    case BMW, XBox, Sony, Samsung, Reebok, NewBalance
}
