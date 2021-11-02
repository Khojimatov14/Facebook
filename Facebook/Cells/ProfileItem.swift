//
//  ProfileItem.swift
//  Facebook
//
//  Created by Anvarjon Khojimatov on 2021/11/02.
//

import SwiftUI

struct ProfileItem: View {
    var body: some View {
        VStack {
            // Header
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("image1")
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
                        HStack {
                            Text("James")
                                .fontWeight(.bold)
                            Text("updated shes profile picture.")
                        }
                        HStack {
                            Text("1d.")
                                .foregroundColor(.black.opacity(0.6))
                            Image(systemName: "globe")
                                .foregroundColor(.black.opacity(0.6))
                        }
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundColor(.black.opacity(0.6))
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.top, 10)
//            .padding(.top, 10)
            
            // Image
            
            ZStack {
                Circle()
                    .frame(width: 328, height: 328)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 160).stroke(Color.gray, lineWidth: 0.5))
                Image("image1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 320, height: 320, alignment: .center)
                    .cornerRadius(160)
            }
            .padding()
            
            HStack{
                Image(systemName: "hand.thumbsup.fill")
                    .frame(width: 20, height: 20)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .background(Color.blue )
                    .cornerRadius(50)
                Text("245")
                    .font(.system(size: 15))
                    .foregroundColor(.black.opacity(0.6))
                Spacer()
            }
            .padding(.leading, 10)
            .padding(.bottom, 10)
            
            HStack {}
                .frame(width: 370, height: 0.5)
                .background(Color.gray.opacity(0.5))
            
            // footer
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
        
    }
}

struct ProfileItem_Previews: PreviewProvider {
    static var previews: some View {
        ProfileItem()
    }
}
