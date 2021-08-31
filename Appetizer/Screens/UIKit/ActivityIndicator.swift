//
//  ActivityIndicator.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
     
        let view = UIActivityIndicatorView(style: .large)
        view.color = UIColor.brandPrimary
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
}
