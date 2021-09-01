//
//  OrderViewModel.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/31/21.
//

import Foundation

final class OrderViewModel: ObservableObject {
    
    @Published var items: [Appetizer] = []
}
