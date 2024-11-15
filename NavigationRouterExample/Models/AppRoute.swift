//
//  AppRoute.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 14/11/2024.
//

import Foundation
enum AppRoute : Hashable{
    case home
    case detail(itemId: Int)
    case settings
}
