//
//  PostItem2image.swift
//  Facebook
//
//  Created by Anvarjon Khojimatov on 2021/11/02.
//

import SwiftUI

struct PostItem2image: View {
    
    var screensize = UIScreen.main.bounds.width / 2
    var body: some View {
        VStack {
            // header
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("image3")
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
                        Text("IT-Park")
                            .fontWeight(.bold)
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
//            .padding(.top, 10)
            
            //Texts
            VStack() {
                HStack {
                    Image(systemName: "exclamationmark")
                        .foregroundColor(.red)
                        .font(.system(size: 25).weight(.bold))
                        .padding(.leading, 10)
                    Image(systemName: "questionmark")
                        .foregroundColor(.red)
                        .font(.system(size: 25).weight(.bold))
                        .padding(.leading, -12)
                    Text("!? IT sohada firilansermisiz?")
                        Spacer()
                }
                .padding(.top, 15)
                .padding(.bottom, 15)
                
                HStack {
                    Text("Unda oxiriga...")
                        .padding(.leading, 10)
                    Text("See More")
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.bottom, 15)
            }
            .frame(maxWidth: .infinity)
            
            // image
            
            HStack(spacing: 4) {
                Image("image1")
                    .resizable()
                    .frame(width: screensize, height: 220)
                    .scaledToFill()
                Image("image2")
                    .resizable()
                    .frame(width: screensize, height: 220)
                    .scaledToFill()
            }
            
            // like, love count, for comment
            
            HStack(spacing: 5) {
                HStack(spacing: -5) {
                    Image(systemName: "hand.thumbsup.fill")
                        .frame(width: 20, height: 20)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .background(Color.blue )
                        .cornerRadius(50)
                    
                }
                Text("4")
                    .foregroundColor(.black.opacity(0.6))
                Spacer()
                Text("1 Share")
                    .foregroundColor(.black.opacity(0.6))
                
                
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
//            .padding(.top, 10)
            
            HStack {}
                .frame(width: 370, height: 1)
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

struct PostItem2image_Previews: PreviewProvider {
    static var previews: some View {
        PostItem2image()
    }
}
