//
//  LikeView.swift
//  InstagramUI
//
//  Created by Temitayo on 19/10/2023.
//

import SwiftUI
import SlidingTabView

struct LikeView: View {
    @State var currentTab: Int = 0
    var body: some View {
        VStack{
            TabWidgetView(selection: $currentTab, tabs: ["Followers","You"],
                           
                           activeAccentColor: .white, inactiveAccentColor:.white.opacity(0.5),
                           selectionBarColor: .white)
            
            .background(.regularMaterial)
            Spacer()
            if currentTab == 0 {
               FollowingView()
            }else{
                Text("Following View")
            }
            
            Spacer()
        }
    }
    
}

#Preview {
    LikeView()
}


