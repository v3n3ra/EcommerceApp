//
//  URLSession+Extension.swift
//  EcommerceApp
//
//  Created by V K on 29.05.2023.
//

import Foundation

extension URLSession {
    
    func fetchData<T: Decodable>(from url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { completion(.failure(error!)); return }
            
            do {
                let results = try JSONDecoder().decode(T.self, from: data)
                completion(.success(results))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
}
