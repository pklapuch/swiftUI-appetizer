//
//  NutritionItem.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/31/21.
//

import SwiftUI

struct NutritionItem: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        
        VStack(spacing: 5) {
            
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
