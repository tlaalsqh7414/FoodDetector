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
            Text("Hello")
                .navigationTitle("Home View")
                .navigationBarTitle("ViewControler")
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
