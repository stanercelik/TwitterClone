//
//  TweetRowView.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 14.05.2023.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            // Profile image & user info & tweet
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                // user info & tweet caption
                VStack(alignment: .leading, spacing: 4){
                    
                    // User info
                    HStack{
                        Text("Taner Celik")
                            .font(.subheadline).bold()
                        
                        Text("@tanercelik")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2m")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    // Tweet caption
                    Text("Birleşe Birleşe Kazanacağız 🫶🫶🫶")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                
                
                
            }
            
            // Action Buttons
            
            HStack(){
                Button {
                    //action
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
                
            }
            .foregroundColor(.gray)
            .padding()
            

            
            Divider()
        }

    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
