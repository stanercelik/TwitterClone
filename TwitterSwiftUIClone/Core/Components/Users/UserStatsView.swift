//
//  UserStatsView.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 16.05.2023.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 16){
            HStack(spacing: 4){
                Text("316")
                    .foregroundColor(.black).bold()
                    .font(.subheadline)
                Text("Following")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            
            
            HStack(spacing: 4){
                Text("1.6 M")
                    .foregroundColor(.black).bold()
                    .font(.subheadline)
                Text("Followers")
                    .foregroundColor(.gray)
                    .font(.caption)

            }
            
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
