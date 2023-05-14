//
//  Profileview.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 14.05.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading){
            headerView
            
            actionButtons
            
            hadderView
            
            Spacer()
            
            
        }
    }
}

struct Profileview_Previews: PreviewProvider {
    static var previews: some View {
    ProfileView()
    }
}


extension ProfileView {
    var headerView : some View {
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }

                
                Circle()
                    .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)

    }
    
    var actionButtons : some View {
        HStack(spacing: 12){
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(
                    Circle()
                    .stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                        .stroke( Color.gray, lineWidth: 0.75))
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
            }


        }
        .padding(.trailing)
    }
    
    var hadderView : some View {
        VStack(alignment: .leading, spacing: 4){
            HStack{
                Text("Taner Çelik")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
                
            }
            
            Text("@tanercelik")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Birleşe birleşe kazanacağız!")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 24){
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("İzmir/Çeşme")

                }
                .foregroundColor(.gray)
                .font(.caption)
                
                
                HStack{
                    Image(systemName: "link")
                    
                    
                     Text("github.com/stanercelik")
                }
                .foregroundColor(.gray)
                .font(.caption)
            }
            
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
            
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
}

