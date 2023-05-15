//
//  UserRowView.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 15.05.2023.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12){
            Circle()
                .frame(width: 48, height: 48)
            VStack(alignment: .leading, spacing: 4){
                Text("Taner Çelik")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text("bıdı bıdı bıdı")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
