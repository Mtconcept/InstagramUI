//
//  FollowingView.swift
//  InstagramUI
//
//  Created by Temitayo on 19/10/2023.
//

import SwiftUI

struct FollowingView: View {
    var body: some View {
        ScrollView(showsIndicators:false){
            VStack(alignment: .leading){
                Text("Follow Requests")
                    .padding(.bottom)
                    .padding(.horizontal)
                ForEach(0..<4) { index in
                    Section(header:Text("New")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)) {
                        HStack(content: {
                            Image("avatar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 44, height: 44)
                            Text("karennne liked your photo.")
                                .font(.system(size: 15))
                            Text("1h")
                                .font(.system(size: 15))
                                .foregroundColor(.white.opacity(0.4))
                            Spacer()
                            Image("postImage")
                                .resizable()
                                .frame(width: 64,height: 64)
                        })
                    }
                }.padding(.horizontal)
                
                ForEach(0..<8) { index in
                    Section(header:Text("Last Week").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)) {
                        HStack(spacing: 0, content: {
                            Image("avatar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 44, height: 44)
                                .padding(.trailing,8)
                            Text("karennne liked your photo.")
                                .font(.system(size: 15))
                            Text("1h")
                                .font(.system(size: 15))
                                .foregroundColor(.white.opacity(0.4))
                            Spacer()
                            Button {
                                
                            } label: {
                                Text(index == 0 ?  "Follow" : "Message")
                                    .font(.system(size: 14,weight:.semibold))
                            }
                            .padding(8)
                            .padding(.horizontal,8)
                            .background(index == 0 ? Color.blue : Color.white.opacity(0.1))
                            .foregroundColor(.white)
                            .cornerRadius(4)
                            
                        })
                    }
                }.padding(.horizontal)
            }
        }
           
    }
}

#Preview {
    FollowingView()
}
