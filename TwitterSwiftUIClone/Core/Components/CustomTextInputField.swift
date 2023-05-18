//
//  CustomTextInputField.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 18.05.2023.
//

import SwiftUI

struct CustomTextInputField: View {
    let imageName : String
    let placeholder : String
    @Binding var text : String
    
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeholder, text: $text)
            }
            Divider()
            .background(Color(.darkGray))
        }
            
    }
}

struct CustomTextInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextInputField(imageName: "enveloper",
                             placeholder: "Email",
                             text: .constant(""))
    }
}
