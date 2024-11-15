//
//  ContentView.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 14/11/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var router = NavigationRouter()
    var body: some View {
        CompatibleNavigationView {
            HomeView()
        }.environmentObject(router)
    }
}

#Preview {
    ContentView()
}
