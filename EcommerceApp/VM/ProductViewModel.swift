//
//  ProductViewModel.swift
//  testTaskVenera_kp
//
//  Created by V K on 21.03.2023.
//

import Foundation
import Combine
import SwiftUI

class ProductViewModel: ObservableObject {
    @Published var latestResponse: LatestAPIResponse?
    @Published var flashSaleResponse: FlashSaleAPIResponse?

    func getLatest() {
        APICaller.shared.getLatestItems { [weak self] result in
            switch result {
            case .success(let latestItems):
                DispatchQueue.main.async {
                    self?.latestResponse = latestItems
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    print(error.localizedDescription)
                    print("VM FILE")
                }
            }
        }
    }
    
    func getFlashSale() {
        APICaller.shared.getFlashSaleItems { [weak self] result in
            switch result {
            case .success(let flashSaleItems):
                DispatchQueue.main.async {
                    self?.flashSaleResponse = flashSaleItems
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    print(error.localizedDescription)
                }
            }
        }
    }

    init() {
        getLatest()
        getFlashSale()
    }
}
