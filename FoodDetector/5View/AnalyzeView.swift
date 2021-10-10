//
//  AnalyzeView.swift
//  FoodDetector
//
//  Created by 강다연 on 2021/10/11.
//

import SwiftUI

struct AnalyzeView: View {
    var body: some View {
        NavigationView {
            Text("ANALYZE")
                .navigationTitle("Analyze View")
                .navigationBarTitle("AnalyzeViewBar")
        }
        .navigationBarHidden(true)
        .tabItem{
            Text("ANALYZE")
            Image(systemName: "doc.text.below.ecg")
        }
    }
}

struct AnalyzeView_Previews: PreviewProvider {
    static var previews: some View {
        AnalyzeView()
    }
}
