//
//  CompatibleNavigationView.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 14/11/2024.
//

import Foundation
import SwiftUI
struct CompatibleNavigationView<Content: View>: View {
    @ViewBuilder let content: Content
    @EnvironmentObject var router: NavigationRouter
    
    var body: some View {
        
        if #available(iOS 16.0, *) {
            NavigationStack(path: $router.path) {
                content
                    .navigationDestination(for: AppRoute.self) { route in
                        router.destination(for: route)
                    }
            }
        } else {
            NavigationView {
                content
                    .background(
                        Group{
                            if let selectedRoute = router.selectedRoute {
                                NavigationLink(destination: router.destination(for: selectedRoute), isActive: Binding(
                                    get: { router.selectedRoute != nil },
                                    set: { isActive in
                                        if !isActive {
                                            router.selectedRoute = nil
                                        }
                                    }
                                )) {
                                    EmptyView() // or any content you want
                                }
                            }
                        }
                    )
            }
        }
        
        
    }
}
