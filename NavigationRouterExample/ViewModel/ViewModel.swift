//
//  ViewModel.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 15/11/2024.
//

import Foundation
import SwiftUICore

class ViewModel: ObservableObject {
    @Published var items: [Item] = []
    
    init() {
        loadItems()
    }
    
    func loadItems() {
        items = [
            Item(id: UUID(), name: "Apple",  description: "Apple is a fruit"),
            Item(id: UUID(), name: "Banana", description: "Banana is a fruit"),
            Item(id: UUID(), name: "Orange", description: "Orange is a fruit"),
            Item(id: UUID(), name: "Mango",  description: "Mango is a fruit"),
            Item(id: UUID(), name: "Kiwi",   description: "Kiwi is a fruit"),
            Item(id: UUID(), name: "Cherry", description: "Cherry is a fruit")]
    }
  
}
