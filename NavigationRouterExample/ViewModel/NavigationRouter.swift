//
//  NavigationRouter.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 14/11/2024.
//

import Foundation
import SwiftUICore
class NavigationRouter : ObservableObject {
    @Published var path: [AppRoute] = [] //for navigation stack
    @Published var selectedRoute: AppRoute? //for navigation link
    
    func push(_ appRoute: AppRoute) {
        if #available (iOS 16.0,  *) {
            path.append(appRoute)
        }else{
            selectedRoute = appRoute
        }
    }
    
    func pop() {
        if #available (iOS 16.0,  *) {
            path.removeLast()
        }else{
            selectedRoute = nil
        }
    }
    
    func popToRoot() {
        if #available (iOS 16.0,  *) {
            path.removeAll()
        }else{
            selectedRoute = nil
        }
    }
    
    @ViewBuilder
    func destination(for appRoute: AppRoute) -> some View {
        switch appRoute {
        case .home:
            HomeView()
        case .detail(let itemId):
            DetailsView(itemId: itemId)
        case.settings:
            SettingsView()
        }
    }
}
