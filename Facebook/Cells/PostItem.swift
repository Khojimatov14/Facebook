//
//  PostItem.swift
//  Facebook
//
//  Created by Anvarjon Khojimatov on 2021/11/01.
//

import SwiftUI

struct PostItem: View {
    
    var image_url = "image1"
    
    var body: some View {
        VStack {
            // header
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("person1")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(50)
                    ZStack {
                        Circle()
                            .frame(width: 22, height: 22)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: 17, height: 17)
                            .foregroundColor(.green)
                    }
                }
                    VStack(alignment:.leading, spacing: 5) {
                        Text("Selena")
                            .fontWeight(.bold)
                        HStack {
                            Text("14m.")
                                .foregroundColor(.black.opacity(0.6))
                            Image(systemName: "person.2.fill")
                                .foregroundColor(.black.opacity(0.6))
                        }
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundColor(.black.opacity(0.6))
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
//            .padding(.top, 10)
            
            // image
            
            Image(image_url)
                .resizable()
                .scaledToFit()
            
            // like, love count, for comment
            
            HStack(spacing: 5) {
                HStack(spacing: -5) {
                    Image(systemName: "hand.thumbsup.fill")
                        .frame(width: 20, height: 20)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .background(Color.blue )
                        .cornerRadius(50)
                    Image(systemName: "heart.fill")
                        .frame(width: 20, height: 20)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .background(Color.red )
                        .cornerRadius(50)
                }
                Text("8.5K")
                    .foregroundColor(.black.opacity(0.6))
                Spacer()
                Text("Shares: 142 ")
                    .foregroundColor(.black.opacity(0.6))
                Text("Comments: 198")
                    .foregroundColor(.black.opacity(0.6))
                
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
//            .padding(.top, 10)
            
            HStack {}
            .frame(height: 0.5)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.5))
            .padding(.top, 3)
            
            HStack {
                Spacer()
                HStack {
                    Image(systemName: "hand.thumbsup")
                        .foregroundColor(.black.opacity(0.8))
                    Text("Like")
                        .foregroundColor(.black.opacity(0.8))
                }
                Spacer()
                HStack {
                    Image(systemName: "message")
                        .foregroundColor(.black.opacity(0.8))
                    Text("Comment")
                        .foregroundColor(.black.opacity(0.8))
                }
                Spacer()
                HStack {
                    Image(systemName: "arrowshape.turn.up.forward")
                        .foregroundColor(.black.opacity(0.8))
                    Text("Share")
                        .foregroundColor(.black.opacity(0.8))
                }
                Spacer()
            }
            .frame(height: 40)
            
            HStack {}
            .frame(height: 10)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.5))
            
        }
        .padding(.top, 10)
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
