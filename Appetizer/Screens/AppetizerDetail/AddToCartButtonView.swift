//
//  AddToCartButtonView.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/31/21.
//

import SwiftUI

struct AddToCartButtonView: View {
    
    let price: Double
    
    var body: some View {
        
        Text("$\(price, specifier: "%.2f") - Add To Order")
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}
