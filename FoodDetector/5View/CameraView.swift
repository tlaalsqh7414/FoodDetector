//
//  CameraView.swift
//  FoodDetector
//
//  Created by 강다연 on 2021/10/11.
//

import SwiftUI

struct CameraView: View {
    var body: some View {
        NavigationView {
            Text("CAMERA")
                .navigationTitle("Camera View")
                .navigationBarTitle("CameraViewBar")
        }
        .navigationBarHidden(true)
        .tabItem{
            Text("CAMERA")
            Image(systemName: "camera")
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
