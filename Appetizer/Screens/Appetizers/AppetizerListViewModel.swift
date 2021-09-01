//
//  AppetizerListViewModel.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published private(set) var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published private(set) var isLoading = false
    
    @Published var isShowingDetail = false
    var selectedDetailAppetizer: Appetizer = MockData.sampleAppetizer
    
    func getAppetizers() {
        
        isLoading = true
        NetworkManager.shared.getAppetizers { [weak self] result in
            DispatchQueue.main.asyncAfter(deadline: .now() +  2, execute: {
                switch result {
                case .success(let appetizers): self?.appetizers = appetizers
                case .failure(let error): self?.alertItem = error.alertItem
                }
                self?.isLoading = false
            })
        }
    }
    
    func showDetail(appetizer: Appetizer) {
        
        selectedDetailAppetizer = appetizer
        isShowingDetail = true // Triggers navigation
    }
}

fileprivate extension APError  {
    
    var alertItem: AlertItem {
        switch self {
        case .invalidResponse: return AlertContext.invalidResponse
        case .invalidData: return AlertContext.invalidData
        case .unableToComplete: return AlertContext.unableToComplete
        }
    }
}
