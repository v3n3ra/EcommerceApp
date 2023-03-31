//
//  APICaller.swift
//  testTaskVenera_kp
//
//  Created by V K on 21.03.2023.
//

import Foundation

struct Constants {
    static let flashSaleURL = "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac"
    static let latestURL = "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7"
    static let detailURL = "https://run.mocky.io/v3/f7f99d04-4971-45d5-92e0-70333383c239"
}

class APICaller {
    static let shared = APICaller()
    
    func getFlashSaleItems(completion: @escaping (Result<FlashSaleModel, Error>) -> Void) {
        guard let url = URL(string: "\(Constants.flashSaleURL)") else { return }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { completion(.failure(error!)); return }
            
            do {
                let results = try JSONDecoder().decode(FlashSaleModel.self, from: data)
                completion(.success(results))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    func getLatestItems(completion: @escaping (Result<LatestModel, Error>) -> Void) {
        guard let url = URL(string: "\(Constants.latestURL)") else { return }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { completion(.failure(error!)); return }
            
            do {
                let results = try JSONDecoder().decode(LatestModel.self, from: data)
                completion(.success(results))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    func getDetailItem(completion: @escaping (Result<DetailProduct, Error>) -> Void) {
        guard let url = URL(string: "\(Constants.detailURL)") else { return }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { completion(.failure(error!)); return }
            
            do {
                let results = try JSONDecoder().decode(DetailProduct.self, from: data)
                completion(.success(results))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
