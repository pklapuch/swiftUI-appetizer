//
//  OrderView.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationView {
        
            ZStack {
                List {
                    ForEach(order.items) { appetizer in
                        AppetizerCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .navigationTitle("🧾 Order")
                .listStyle(PlainListStyle())
            
                if order.items.isEmpty {
                    EmptyStateView()
                }
            }
        }
    }
    
    private func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
