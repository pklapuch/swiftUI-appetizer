//
//  EmptyStateView.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/31/21.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
     
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all, edges: .all)
            
            Text("emtpy")
        }
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
    }
}
