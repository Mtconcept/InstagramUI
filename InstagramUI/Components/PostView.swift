//
//  PostView.swift
//  InstagramUI
//
//  Created by Temitayo on 17/10/2023.
//

import SwiftUI

struct PostView: View {
    let postImage: [String] = ["postImage","postImage","postImage"]
    @State var postIndex: Int = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0..<5) { index in
                    HStack{
                        Image("avatar")
                            .resizable()
                            .frame(width: 32,height: 32)
                        VStack (alignment: .leading){
                            HStack(alignment: .firstTextBaseline) {
                                Text("Joshua_I")
                                    .font(.callout)
                                Image("Official Icon")
                            }
                            Text("Tokyo Japan")
                                .font(.caption)
                            
                        }
                       Spacer()
                        Image(systemName: "ellipsis")
                            .padding()
                       
                    }
                    .padding(.top)
                .padding(.leading)
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack (spacing:0){
                            ForEach(postImage.indices) { index in
                                Image(postImage[index]).resizable().frame(
                                    width: UIScreen.main.bounds.width,
                                    height: UIScreen.main.bounds.height/2.5)
                                    .aspectRatio(contentMode:.fill)
                            }
                        }
                    }.onChange(of: postImage) {
                        postIndex = index
                    }
                    HStack(spacing: 12){
                        Image("Like")
                            .resizable()
                            .frame(width: 20,height: 20)
                        Image("Comment")
                            .resizable()
                            .frame(width: 20,height: 20)
                        Image("Messanger")
                            .resizable()
                            .frame(width: 20,height: 20)
                        Spacer()
                        ForEach(postImage.indices) { index in
                            Circle()
                                .fill(postIndex == index ? .blue: .white)
                                .frame(width: 8,height: 8)
                        }
                        Spacer()
                        Spacer()
                        Image("Save")
                            .resizable()
                            .frame(width: 20,height: 20)
                    }
                    .padding(.leading,8)
                    .padding(.top,10)
                    .padding(.trailing)
                    
                    
                    HStack{
                        Image("avatar")
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text("Liked by craig_love and 44,686 others")
                          .font(Font.custom("SF Pro Text", size: 15))
                        Spacer()
                    
                    }.padding(.horizontal)
                        .padding(.top)
                    Text("joshua_l The game in Japan was amazing and I want to share some photos").padding(.horizontal)
                    
                }
            
            }
        }
    }
}

#Preview {
    PostView()
}
