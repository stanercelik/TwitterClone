//
//  PasswordInputView.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 18.05.2023.
//

import SwiftUI

struct PasswordInputView: View {
    let imageName : String
    let placeholder : String
    @Binding var text : String
    @State private var isSecured : Bool = true
    
    
    var body: some View {
        
        VStack {
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                Group{
                    if isSecured {
                        SecureField(placeholder, text: $text)
                    } else {
                        TextField(placeholder, text: $text)
                    }
                }
                Button(action: {
                               isSecured.toggle()
                           }) {
                               Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                   .accentColor(.gray)
                           }

            }
            Divider()
            .background(Color(.darkGray))
        }
            
    }
}

struct PasswordInputView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordInputView(imageName: "enveloper",
                          placeholder: "Email",
                          text: .constant(""))
    }
}
