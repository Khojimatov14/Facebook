//
//  CreateStrory.swift
//  Facebook
//
//  Created by Anvarjon Khojimatov on 2021/11/02.
//

import SwiftUI

struct CreateStrory: View {
    var body: some View {
        ZStack {
            VStack {
                Image("person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                
                HStack {}
                    .frame(width: 100, height: 60)
                    .background(Color.init(.systemGray6))
            }
            VStack {
                Image(systemName: "plus")
                    .frame(width: 30, height: 30)
                    .font(.system(size: 19))
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.init(.systemGray6), lineWidth: 3))
                
                Text("Create a")
                    .font(.system(size: 15).weight(.bold))
                Text("Story")
                    .font(.system(size: 15).weight(.bold))
            }
            .padding(.top, 100)
            
        }
        .frame(width: 100, height: 180)
        .cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 0.2))
        .padding(.leading, 5)
    }
}

struct CreateStrory_Previews: PreviewProvider {
    static var previews: some View {
        CreateStrory()
    }
}
