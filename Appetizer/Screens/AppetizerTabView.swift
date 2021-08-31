//
//  ContentView.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        
        TabView {
            AppetizerListView().tabItem { AppetizerListTabIcon() }
            AccountView().tabItem { AccountTabIcon() }
            OrderView().tabItem { OrderTabIcon() }
        }.accentColor(Color.brandPrimary)
    }
}

struct AppetizerListTabIcon: View {
    
    var body: some View {
        
        VStack {
            Image(systemName: "house")
            Text("Home")
        }
    }
}

struct AccountTabIcon: View {
    
    var body: some View {
        
        VStack {
            Image(systemName: "person")
            Text("Account")
        }
    }
}

struct OrderTabIcon: View {
    
    var body: some View {
        
        VStack {
            Image(systemName: "bag")
            Text("Order")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
