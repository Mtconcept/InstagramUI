//
//  BottomNav.swift
//  InstagramUI
//
//  Created by Temitayo on 17/10/2023.
//

import SwiftUI

struct BottomNav: View {
    var body: some View {
        TabView {
        // First Tab
        HomeView()
            .tabItem {
                Image("Home")
            }
        SearchView()
            .tabItem {
                Image("Search")
            
            }
        
        // Third Tab
        Text("")
            .tabItem {
                Image("Create")
            } 
            
            // Fourth Tab
            LikeView()
            .tabItem {
                Image("Like")
            }  
            
            // Fifth Tab
            ProfileView()
            .tabItem {
                Image("profile")
                    .resizable()
                .frame(width: 16,height: 16)
                .overlay( Circle().stroke(
                    LinearGradient(colors: [.purple,.orange,.red,.orange,.purple,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing),lineWidth:2))
                .padding(.trailing,4)
            }
    }
        .background(
                    Color.clear
                        .background(
                            VisualEffectView(effect: UIBlurEffect(style: .systemThinMaterial))
                                .cornerRadius(10) // You can adjust the corner radius as needed
                                .padding(.horizontal, -10) // Adjust padding as needed
                        ))
    }
}


struct VisualEffectView: UIViewRepresentable {
    let effect: UIVisualEffect

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: effect)
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = effect
    }
}

#Preview {
    BottomNav()
}
