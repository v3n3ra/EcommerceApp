//
//  APICaller.swift
//  EcommerceApp
//
//  Created by V K on 21.03.2023.
//

import Foundation

struct Constants {
    static let baseURL: String = "https://run.mocky.io/v3/"
    static let flashSalePath: String = "a9ceeb6e-416d-4352-bde6-2203416576ac"
    static let latestPath: String = "cc0071a1-f06e-48fa-9e90-b1c2a61eaca7"
    static let detailPath: String = "f7f99d04-4971-45d5-92e0-70333383c239"
}

class APICaller {
    static let shared: APICaller = APICaller()
    
    func getFlashSaleItems(completion: @escaping (Result<FlashSaleModel, Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)\(Constants.flashSalePath)") else { return }
        URLSession.shared.fetchData(from: url, completion: completion)
    }
    
    func getLatestItems(completion: @escaping (Result<LatestModel, Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)\(Constants.latestPath)") else { return }
        URLSession.shared.fetchData(from: url, completion: completion)
    }
    
    func getDetailItem(completion: @escaping (Result<DetailProduct, Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)\(Constants.detailPath)") else { return }
        URLSession.shared.fetchData(from: url, completion: completion)
    }
}


