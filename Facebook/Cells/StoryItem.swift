//
//  StoryItem.swift
//  Facebook
//
//  Created by Anvarjon Khojimatov on 2021/11/01.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image("image8")
                .resizable()
                .frame(width: 100, height: 180)
                .scaledToFit()
            VStack(alignment: .leading) {
                Image("person")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(50)
                    .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.blue, lineWidth: 3))
                    .padding(.top, 6)
                    .padding(.leading, 6)
                Spacer()
                Text("Alize")
                    .font(.system(size: 17).weight(.bold))
                    .foregroundColor(.white)
                    .padding(.leading, 6)
                Text("Jacotey")
                    .font(.system(size: 17).weight(.bold))
                    .foregroundColor(.white)
                    .padding(.bottom, 6)
                    .padding(.leading, 6)
            }
//            
                
        }
        .frame(width: 100, height: 180)
        .cornerRadius(15)
        .padding(.leading, 5)
        
        
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
