//
//  ProfileView.swift
//  FoodDetector
//
//  Created by 강다연 on 2021/10/11.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            Text("PROFILE")
                .navigationTitle("Profile View")
                .navigationBarTitle("ProfileViewControler")
        }
        .navigationBarHidden(true)
        .tabItem{
            Text("PROFILE")
            Image(systemName: "person.circle")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
