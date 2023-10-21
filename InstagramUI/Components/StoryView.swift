//
//  StoryView.swift
//  InstagramUI
//
//  Created by Temitayo on 17/10/2023.
//

import SwiftUI

struct StoryView: View {
    var names: [String] = ["Tayo","Olakunle","Samuel","Tayo","Femi","Ademola","Ojo","Sope","Kunle","Ola","Mide","Wizkid"]
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack{
                ForEach(names.indices) { index in
                    VStack {
                        Image("avatar")
                        .frame(width: 60,height: 60)
                        .overlay( Circle().stroke(
                            LinearGradient(colors: [.purple,.orange,.red,.orange,.purple,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing),lineWidth:2))
                        .padding(.trailing,4)
                    .padding(.top)
                        Text("\(names[index])")
                            .font(.caption)
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    StoryView()
}
