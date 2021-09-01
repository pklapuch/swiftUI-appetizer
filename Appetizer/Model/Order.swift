//
//  Order.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/31/21.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
}
