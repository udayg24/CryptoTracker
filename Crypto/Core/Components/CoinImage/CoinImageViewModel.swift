//
//  CoinImageViewModel.swift
//  Crypto
//
//  Created by Uday Gajera on 25/01/24.
//

import Foundation
import SwiftUI
import Combine

class coinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    private var cancellables = Set<AnyCancellable>()
    
    private let dataService: CoinImageService
    private let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
        self.isLoading = true
    }
    
    private func addSubscribers() {
        dataService.$image
            .sink { [weak self](_) in
                self?.isLoading = false
            } receiveValue: { [weak self](returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancellables)

    }
}
