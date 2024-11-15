//
//  View+Ext.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 15/11/2024.
//

import SwiftUI
extension View {
    func customNavBar(title: String, backButtonAction: (() -> Void)? = nil) -> some View {
        self.modifier(CustomNavBarModifier(title: title, backButtonAction: backButtonAction))
    }
}
