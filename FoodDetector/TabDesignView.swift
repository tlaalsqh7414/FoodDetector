//
//  TabDesignView.swift
//  FoodDetector
//
//  Created by 강다연 on 2021/10/11.
//

import SwiftUI

struct TabDesignView: View {
    var body: some View {
        TabView{
            HomeView()
            AnalyzeView()
            CameraView()
            CommunityView()
            ProfileView()
        }
    }
}

struct TabDesignView_Previews: PreviewProvider {
    static var previews: some View {
        TabDesignView()
    }
}
