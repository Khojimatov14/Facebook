//
//  Home.swift
//  Facebook
//
//  Created by Anvarjon Khojimatov on 2021/11/01.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                // live, photo, room
                VStack {
                    HStack {
                        Image("person")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(50)
                        Text("What's on your mind?")
                            .font(.system(size: 17))
                    }
                    .frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    
                    HStack {}
                    .frame(height: 1)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    
                    HStack {
                        
                        HStack{
                            ZStack {
                                Image(systemName: "video.fill")
                                    .foregroundColor(.red)
                                Image(systemName: "eye.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 8))
                                    .padding(.leading, -5)
                                
                            }
                            Text("Live")
                                .font(.system(size: 15))
                        }
                        Spacer()
                        HStack{}
                            .frame(width: 1, height: 30)
                            .background(Color.gray.opacity(0.3))
                        Spacer()
                        HStack{
                            Image(systemName: "photo.on.rectangle.angled")
                                .foregroundColor(.green)
                            Text("Photo")
                                .font(.system(size: 15))
                        }
                        Spacer()
                        HStack{}
                            .frame(width: 1, height: 30)
                            .background(Color.gray.opacity(0.3))
                        
                        Spacer()
                        HStack{
                            ZStack {
                                Image(systemName: "video.fill")
                                    .foregroundColor(.purple)
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .font(.system(size: 10))
                                    .padding(.leading, -4)
                            }
                            Text("Room")
                                .font(.system(size: 15))
                        }
                        
                        
                    }
                    .frame(height: 45)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                }
                
                // greet room
                
                VStack {
                    HStack{}
                        .frame(maxWidth: .infinity)
                        .frame(height: 10)
                        .background(Color.gray.opacity(0.3))
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                CreateRoom()
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                            }
                        }
                    }
                    .frame(height: 70)
                    .frame(maxWidth: .infinity)
                    .padding(.leading, 10)
                    
                    HStack{}
                        .frame(maxWidth: .infinity)
                        .frame(height: 10)
                        .background(Color.gray.opacity(0.3))
                    
                }
                
                // greet story
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 1) {
                            CreateStrory()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                        }
                    }
                }
                .padding(.top, 10)
                .padding(.bottom, 10)
                
                
                    
                // post
                    
                VStack {
                    HStack{}
                        .frame(maxWidth: .infinity)
                        .frame(height: 10)
                        .background(Color.gray.opacity(0.3))
                    ProfileItem()
                    PostItem2image()
                    PostItem(image_url: "image1")
                    PostItem(image_url: "image2")
                    PostItem(image_url: "image3")
                }
                
                
                
                    .navigationBarItems(
                        leading: Text("facebook")
                            .font(.system(size: 28).weight(.bold))
                            .foregroundColor(.blue),
                        trailing: HStack {
                            ZStack {
                                Circle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 30, height: 30)
                                Image(systemName: "magnifyingglass")
                            }
                            ZStack {
                                Circle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 30, height: 30)
                                Image(systemName: "bolt.horizontal.circle.fill")
                            }
                        })
                .navigationBarTitle("",displayMode: .inline)
            }
            
               
        }
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
