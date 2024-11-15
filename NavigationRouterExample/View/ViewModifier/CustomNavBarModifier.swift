//
//  CustomNavBarModifier.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 15/11/2024.
//

import Foundation
import SwiftUI
struct CustomNavBarModifier : ViewModifier {
    let title: String
    let backButtonAction: (() -> Void)?
    
    init(title: String, backButtonAction: (() -> Void)? = nil) {
        self.title = title
        self.backButtonAction = backButtonAction
    }
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    if let backButtonAction {
                        Button(action: backButtonAction) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color.black)
                        }
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    Text(title)
                        .font(.headline)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
    }
}
