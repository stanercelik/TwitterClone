//
//  NewTweetView.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 17.05.2023.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack{
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button {
                    print("Tweet")
                } label: {
                    Text("Tweet").bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }


            }
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 64, height: 64)
                
                TextField("Neler oluyor", text: $caption)
                    .frame(minHeight: 300, maxHeight: UIScreen.main.bounds.height * 0.8, alignment: .top)
            }
            
            Spacer()
            
        }
        .padding(.horizontal)
        
    }
    
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
