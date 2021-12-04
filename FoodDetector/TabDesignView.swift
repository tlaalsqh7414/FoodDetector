//
//  TabDesignView.swift
//  FoodDetector
//
//  Created by 강다연 on 2021/10/11.
//

import SwiftUI

struct TabDesignView: View {
    var body: some View {
        TabView {
            HomeView(calendar: Calendar(identifier: .gregorian))
                .tabItem{
                    Text("홈")
                    Image(systemName: "house")
                }
                .navigationBarHidden(true)
            AnalyzeView()
                .tabItem{
                    Text("분석")
                    Image(systemName: "doc.text.below.ecg")
                }
                .navigationBarHidden(true)
            CameraView()
                .tabItem{
                    Text("촬영")
                    Image(systemName: "camera")
                }
                .navigationBarHidden(true)
            CommunityView()
                .tabItem{
                    Text("커뮤니티")
                    Image(systemName: "person.2.circle")
                }
                .navigationBarHidden(true)
            ProfileView()
                .tabItem{
                    Text("프로필")
                    Image(systemName: "person.circle")}
                .navigationBarHidden(true)
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct TabDesignView_Previews: PreviewProvider {
    static var previews: some View {
        TabDesignView()
    }
}
