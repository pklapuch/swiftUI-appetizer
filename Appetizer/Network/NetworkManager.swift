//
//  NetworkManager.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    static let baseURL = URL(string: "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals")!
    static let appetizerURL = baseURL.appendingPathComponent("appetizers")
    
    private init() { }
    
    func getAppetizers(completion: @escaping (Result<[Appetizer], APError>) -> Void) {
        
        let request = URLRequest(url: Self.appetizerURL)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard error == nil else {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completion(.success(decodedResponse.request))
                
            } catch {
                completion(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
    
    func getImage(url: URL, completion: @escaping (UIImage?) -> Void) {
     
        let cacheKey = NSString(string: url.path)
        if let image = cache.object(forKey: cacheKey) {
            completion(image)
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data else {
                completion(nil)
                return
            }
      
            guard let image = UIImage(data: data) else {
                completion(nil)
                return
            }
         
            self.cache.setObject(image, forKey: cacheKey)
            completion(image)
        }
        
        task.resume()
    }
}
