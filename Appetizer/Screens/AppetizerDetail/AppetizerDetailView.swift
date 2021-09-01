//
//  AppetizerDetailView.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

struct AppetizerDetailView: View {

    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        VStack {
            
            AppetizerRemoteImage(url: appetizer.imageURL)
                .frame(width: 300, height: 225)
            
            VStack {
                
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionItem(title: "Calories", value: appetizer.calories)
                    NutritionItem(title: "Carbs", value: appetizer.protein)
                    NutritionItem(title: "Protein", value: appetizer.carbs)
                }
                
                Spacer()
                
                Button {
                    order.items.append(appetizer)
                    isShowingDetail = false
                } label: {
                    AddToCartButtonView(price: appetizer.price)
                }
                .padding(.bottom, 30)
                
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(DismissButton(isShowing: $isShowingDetail), alignment: .topTrailing)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(false))
    }
}
