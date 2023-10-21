//
//  ProfileView.swift
//  InstagramUI
//
//  Created by Temitayo on 20/10/2023.
//

import SwiftUI
import SlidingTabView

struct ProfileView: View {
    var body: some View {
        VStack {
            TopHeader()
            ScrollView(.vertical,showsIndicators: false ) {
                LazyVStack(alignment:.leading,pinnedViews: .sectionHeaders){
                    ProfileDetailsView()
                    Text("Jacob West")
                        .font(.system(size: 14,weight: .semibold))
                        .multilineTextAlignment(.center)
                        .padding(.bottom,2)
                    Text("Digital goodies designer @pixsellz \nEverything is designed.")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.leading)
                        .padding(.bottom,12)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Edit Profile")
                            .font(.caption)
                            .foregroundColor(.white)
                    })
                    .frame(width: UIScreen.main.bounds.width-24, height: 29)
                    .padding(.vertical,4)
                    .cornerRadius(8)
                    .overlay(
                    RoundedRectangle(cornerRadius: 6)
                    .stroke(.white.opacity(0.15), lineWidth: 1))
                    .padding(.bottom,16)
                    PersonalStoryView()
                    PostTagItem()
                    
                    
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}

struct PersonalStoryView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack{
                VStack {
                    Image(systemName: "plus")
                        .frame(width: 64,height: 64)
                        .overlay(Circle().stroke(.white.opacity(0.1)))
                    
                    Text("New")
                        .font(.system(size: 14))
                }
                ForEach(0..<5) { index in
                    VStack {
                        Image(index == 3 ? "imagePost":"postImage")
                            .resizable()
                            .frame(width: 64,height: 64)
                            .cornerRadius(100)
                            .overlay(Circle().stroke(.black,lineWidth:10))
                            .overlay(Circle().stroke(.white.opacity(0.3)))
                        
                        Text(index == 3 ? "Designs":"Friends")
                            .font(.system(size: 14))
                    }
                }
                
                
            }
        }.padding(.horizontal,8)
    }
}

struct PostTagItem: View {
    @State var currentIndex: Int = 0
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        VStack{
            Section {
                TabWidgetView(selection: $currentIndex, tabs: ["Grid Icon","Tags Icon"],activeAccentColor: .white, inactiveAccentColor: .red, selectionBarColor: .white, isImage: true)
            }
            if currentIndex == 0 {
                LazyVGrid(columns: columns){
                    ForEach(0..<16) { index in
                        Image("postImage")
                    }
                }
            }else{
                LazyVGrid(columns: columns,spacing: 10){
                    ForEach(0..<2) { index in
                        Image("imagePost")
                    }
                }
            }
        }
    }
}

struct TopHeader: View {
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: "lock.fill")
            Text("jacob_w")
            Image(systemName: "chevron.down")
            Spacer()
            Image("Menu")
            
        }
        .padding(.bottom,24)
        .padding(.horizontal,16)
    }
}

struct ProfileDetailsView: View {
    var body: some View {
        HStack(spacing:28){
            Image("imagePost")
                .resizable()
                .frame(width: 86, height: 86)
                .cornerRadius(100)
                .overlay(Circle().stroke(.black,lineWidth: 10.0))
                .overlay(
                    Circle()
                        .stroke( LinearGradient(colors: [.purple,.orange,.red,.orange,.purple,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 1.5)
                    
                )
                .padding(.trailing,24)
            
            
            VStack{
                Text("54")
                    .font(.system(size: 18,weight: .bold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom,2)
                Text("Posts")
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
            }
            VStack{
                Text("834")
                    .font(.system(size: 18,weight: .bold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom,2)
                Text("Followers")
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
            }
            VStack{
                Text("162")
                    .font(.system(size: 18,weight: .bold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom,2)
                Text("Following")
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
            }
        }.padding(.bottom,12)
        .padding(.horizontal,16)
    }
}
