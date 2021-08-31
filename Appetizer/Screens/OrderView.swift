//
//  OrderView.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        
        NavigationView {
        
            Text("Order")
                .navigationTitle("🧾 Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
