//
//  HomeView.swift
//  FoodDetector
//
//  Created by 강다연 on 2021/10/06.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("HOME")
                .navigationTitle("Home View")
                .navigationBarTitle("HomeViewBar")
        }
        .navigationBarHidden(true)
        .tabItem{
            Text("Home")
            Image(systemName: "eye")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
