//
//  HomeView.swift
//  NavigationRouterExample
//
//  Created by waqas ahmed on 14/11/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: NavigationRouter
    @StateObject var viewModel = ViewModel()
    var body: some View {
        
        VStack{
            List{
                ForEach(0..<viewModel.items.count, id: \.self){index in
                    Text("\(viewModel.items[index].name)")
                        .onTapGesture {
                            router.push(.detail(itemId: index))
                        }
                }
            }
        }
        .customNavBar(title: "Home")
        .navigationBarItems(trailing: Image(systemName: "gear.circle").onTapGesture(perform: {
            router.push(.settings)
        }))
    }
}

#Preview {
    NavigationView {
        HomeView()
            .environmentObject(NavigationRouter()) // Provide a default instance
    }
}
