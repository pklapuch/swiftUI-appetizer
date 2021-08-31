//
//  AppetizerDetailView.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        
        VStack {
            
            HStack {
                Button {
                    
                } label: {
                    Text("Click")
                }
            }
            
            VStack {
                Text("Chicken Winggs")
                Text("Detail")
                
                HStack {
        
                    
                }
                
                Button {
                    
                } label: {
                    Text("Click")
                }
            }
        }
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer)
    }
}
