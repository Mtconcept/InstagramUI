//
//  TopNavBar.swift
//  InstagramUI
//
//  Created by Temitayo on 17/10/2023.
//

import SwiftUI

struct TopNavBar: View {
    var body: some View {
        HStack{
            Image("Camera")
            
            Spacer()
            Spacer()
            Image("Instagram Logo")
            Spacer()
            Image("IGTV")
                .padding(.trailing)
            Image("Messanger")
        }.padding(20)
            .background(Color(white: 0.065))
    }
}

#Preview {
    TopNavBar()
}
