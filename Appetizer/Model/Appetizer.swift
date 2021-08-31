//
//  Appetizer.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    
    let id : Int
    let name: String
    let description: String
    let price: Double
    let imageURL: URL
    let calories: Int
    let carbs: Int
    let protein: Int
    
    enum CodingKeys: String, CodingKey {
        
        case id
        case name
        case description
        case price
        case calories
        case imageURL
        case carbs
        case protein
    }
    
    init(id: Int,
         name: String,
         description: String,
         price: Double,
         imageURL: URL,
         calories: Int,
         carbs: Int,
         protein: Int) {
        
        self.id = id
        self.name = name
        self.description = description
        self.price = price
        self.imageURL = imageURL
        self.calories = calories
        self.carbs = carbs
        self.protein = protein
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)

        calories = try container.decode(Int.self, forKey: .calories)
        
        let urlString = try container.decode(String.self, forKey: .imageURL)
        guard let url = URL(string: urlString) else {
            throw NSError(domain: "", code: 0, userInfo: nil)
        }
        imageURL = url
        
        id = try container.decode(Int.self, forKey: .id)
        carbs = try container.decode(Int.self, forKey: .carbs)
        protein = try container.decode(Int.self, forKey: .protein)
        name = try container.decode(String.self, forKey: .name)
        description = try container.decode(String.self, forKey: .description)
        price = try container.decode(Double.self, forKey: .price)
    }
}
