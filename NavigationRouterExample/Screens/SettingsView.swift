//
//  SettingsView.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 14/11/2024.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var router: NavigationRouter
    
    var body: some View {
        VStack {
            Text("Settings View")
        }
        .navigationBarBackButtonHidden(true)
        .customNavBar(title: "Settings") {
            router.popToRoot()
        }
    }
}

#Preview {
    NavigationView {
        SettingsView()
            .environmentObject(NavigationRouter())
    }
}

