//
//  HomeView.swift
//  InstagramUI
//
//  Created by Temitayo on 17/10/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            VStack {
                TopNavBar()
                StoryView()
                PostView()
            }

    }
    
}

#Preview {
    HomeView()
}
