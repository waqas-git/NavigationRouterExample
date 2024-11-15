//
//  DetailsView.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 14/11/2024.
//

import SwiftUI

struct DetailsView: View {
    let itemId: Int
    @EnvironmentObject var router: NavigationRouter
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            Text("Name: \(viewModel.items[itemId].name)")
                .padding()
            Text("Description: \(viewModel.items[itemId].description)")
                .padding()
        }
        .navigationBarBackButtonHidden(true)
        .customNavBar(title: "Details") {
            router.pop()
        }
        .navigationBarItems(trailing: Image(systemName: "gear.circle").onTapGesture {
            router.push(.settings)
        })
    }
}

#Preview {
    NavigationView {
        DetailsView(itemId: 1)
            .environmentObject(NavigationRouter())
    }
}
