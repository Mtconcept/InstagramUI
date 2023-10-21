//
//  SearchView.swift
//  InstagramUI
//
//  Created by Temitayo on 17/10/2023.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search", text: $searchText)
                }
                .padding()
                .background(.regularMaterial)
            .cornerRadius(10)
            .padding(.leading,12)
                Image("Scan")
                    .padding(12)
            }
            
            HStack(spacing:10) {
                menuChip(text: "IGTV", image: "IGTV1")
                menuChip(text: "Shop", image: "Shop")
                menuChip(text: "Style", image: "")
                menuChip(text: "Sport", image: "")
                menuChip(text: "Auto", image: "")
            }
            .padding(.top,12)
                
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(0..<32) { index in
                        Image("postImage")
                    }
                }
            }
            
        }
        
    }
    
    func menuChip( text:String,  image: String?) -> some View {
        HStack{
        Image("\(image ?? "")")
        Text("\(text)")
        }
        .padding(8)
        .background(.regularMaterial)
        .frame(height: 35)
        .cornerRadius(6)
        .overlay(RoundedRectangle(cornerRadius: 6)
            .inset(by: 0.5)
            .stroke(.white.opacity(0.15), lineWidth: 1)

            )
    }
}

#Preview {
    SearchView()
}
