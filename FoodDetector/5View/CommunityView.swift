//
//  CommunityView.swift
//  FoodDetector
//
//  Created by 강다연 on 2021/10/11.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        NavigationView {
            Text("COMMUNITY")
                .navigationTitle("Community View")
                .navigationBarTitle("CommunityViewControler")
        }
        .navigationBarHidden(true)
        .tabItem{
            Text("COMMUNITY")
            Image(systemName: "person.2.circle")
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
