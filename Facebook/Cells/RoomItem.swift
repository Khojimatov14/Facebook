//
//  RoomItem.swift
//  Facebook
//
//  Created by Anvarjon Khojimatov on 2021/11/01.
//

import SwiftUI

struct RoomItem: View {
    var isOnline = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("person1")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(50)
            
            if isOnline {
                ZStack {
                    Circle()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.white)
                    Circle()
                        .frame(width: 17, height: 17)
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem()
    }
}
