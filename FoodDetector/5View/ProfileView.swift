//
//  ProfileView.swift
//  FoodDetector
//
//  Created by 강다연 on 2021/10/11.
//

import SwiftUI

struct ProfileView: View {
    @State var selectedTab: String = "square.grid.3x3"
    @Namespace var animation
    
    var body: some View {
        VStack (){
            VStack {
                HStack(spacing: 40){
                    Text("us")
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(20)
                        .background(Color.purple)
                        .clipShape(Circle())
                        .padding(2)
                        .background(Color.white)
                        .clipShape(Circle())
                    
                    VStack{
                        Text("199")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("Likes")
                            .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack{
                        Text("13")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("Meals")
                            .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity)
                    
                    
                        
                }
                .padding(40)
                
                VStack(alignment: .leading, spacing: 4, content: {
                    Text("Profile")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("_user0001")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Text("content2.. dksdudgktpdy. sjan whfflspdy. ekemf glasotpdy. ghkdlxld")
                    
                    HStack{
                        Button(action: {}, label: {
                            Text("프로필 편집")
                                .foregroundColor(.blue)
                                .padding(.vertical, 6)
                                .padding(.horizontal)
                                .background(
                                    Capsule()
                                        .stroke(Color.blue)

                                )
                        })
                            .padding(.top, 10)
                        
                        Button(action: {}, label: {
                            Text("목표 수정")
                                .foregroundColor(.blue)
                                .padding(.vertical, 6)
                                .padding(.horizontal)
                                .background(
                                    Capsule()
                                        .stroke(Color.blue)

                                )
                        })
                            .padding(.top, 10)
                            .padding(.leading, 10)
                        
                        
                    }
                    
                    
                })
                    .padding(.horizontal, 13)
                
                
                // Seg Bar
                HStack(spacing: 0){
                    SegButton(image: "square.grid.3x3", isSystemImage: true, animation: animation, selectedTab: $selectedTab)
                    
                    SegButton(image: "graduationcap", isSystemImage: true, animation: animation, selectedTab: $selectedTab)
                    
                    
                }
                .frame(height: 50, alignment: .bottom)
            }
            
            ScrollView(.vertical, showsIndicators: false, content: {
                if selectedTab == "square.grid.3x3" {
                    Text("Select1")
                    // TODO: 지금까지 올린 식단 Grid 표시
                }
                else{
                    Text("Select2")
                    // TODO: 당근마켓 뱃지 같은거?
                }
            })
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct SegButton: View {
    
    var image: String
    var isSystemImage: Bool
    var animation: Namespace.ID
    @Binding var selectedTab: String
    
    var body: some View{
        
        Button(action: {
            withAnimation(.easeInOut) {
                selectedTab = image
            }
            
        }, label: {
            VStack(spacing: 12){
                
                (
                    isSystemImage ? Image(systemName: image) : Image(image)
                )
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28, height: 28)
                    .foregroundColor(selectedTab == image ? .primary : .gray)
                
                ZStack{
                    if selectedTab == image {
                        Rectangle()
                            .fill(Color.primary)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                    else {
                        Rectangle()
                            .fill(Color.clear)
                    }
                }
                .frame(height: 1)
            }
        })
    }
}
