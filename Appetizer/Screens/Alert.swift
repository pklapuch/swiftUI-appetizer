//
//  Alert.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    static let invalidResponse = AlertItem(title: Text("Invalid Response"),
                                            message: Text("Try again later!"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidData = AlertItem(title: Text("Invalid Data"),
                                        message: Text("Try again later!"),
                                        dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Operation Failed!"),
                                            message: Text("Try again later!"),
                                            dismissButton: .default(Text("OK")))
}
