//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject private var viewModel = AppetizerListViewModel()
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
            
                List(viewModel.appetizers) { appetizer in
                    AppetizerCell(appetizer: appetizer, imageName: "asian-flank-steak")
                }
                .navigationTitle("🍟 Appetizers")
            }.onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }.alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: .default(Text("OK")))
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
