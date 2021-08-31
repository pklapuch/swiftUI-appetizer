//
//  RemoteImage.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(url: URL) {
        
        NetworkManager.shared.getImage(url: url) { uiImage in
            
            guard let uiImage = uiImage else { return }
            
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        
        if let image = image {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        } else {
        
            Image("food-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct AppetizerRemoteImage: View {
    
    @StateObject private var loader: ImageLoader = ImageLoader()
    let url: URL
    
    var body: some View {
        
        RemoteImage(image: loader.image)
            .onAppear { loader.load(url: url) }
    }
}
