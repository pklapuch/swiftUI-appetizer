//
//  AccountViewModel.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/31/21.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var storedUserData: Data?
    @Published var user: User = .empty
    
    func saveChanges() {
     
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(user) else { return }
        storedUserData = data
    }
    
    func loadUser() {
        
        guard let data = storedUserData else { return }
        guard let user = try? JSONDecoder().decode(User.self, from: data) else { return }
        self.user = user
    }
}
