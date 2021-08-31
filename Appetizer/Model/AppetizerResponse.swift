//
//  AppetizerResponse.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import Foundation

struct AppetizerResponse: Decodable {
    
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0,
                                           name: "Name",
                                           description: "Tasty",
                                           price: 5.99,
                                           imageURL: URL(string: "https://google.com")!,
                                           calories: 500,
                                           carbs: 1000,
                                           protein: 12)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
//    static let sampleImage: UIImage? {
//        
//        return UIImage(name: "asian-flank-steak")
//    }
}
