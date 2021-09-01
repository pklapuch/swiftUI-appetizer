//
//  DismissButton.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/31/21.
//

import SwiftUI

struct DismissButton: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        
        Button {
            isShowing = false
        } label: {
            DismissButtonView()
        }
    }
}
