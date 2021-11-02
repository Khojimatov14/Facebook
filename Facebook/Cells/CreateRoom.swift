//
//  CreateRoom.swift
//  Facebook
//
//  Created by Anvarjon Khojimatov on 2021/11/02.
//

import SwiftUI

struct CreateRoom: View {
    var body: some View {
        Button(action: {}, label: {
            HStack {
                ZStack {
                    Image(systemName: "video.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.purple)
                    
                    Image(systemName: "plus")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .padding(.leading, -6)
                    
                }
                VStack {
                    Text("Create")
                        .font(.system(size: 16))
                    Text("Room")
                        .font(.system(size: 16))
                }
            }
        })
        .frame(width: 130, height: 50)
        .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.blue.opacity(0.3), lineWidth: 4))
        .cornerRadius(50)
    }
}

struct CreateRoom_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoom()
    }
}
