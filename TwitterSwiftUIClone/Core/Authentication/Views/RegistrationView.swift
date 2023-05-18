//
//  RegistrationView.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 18.05.2023.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var username = ""
    @State private var fullName = ""
    @State private var password = ""
    
    @EnvironmentObject var viewModel : AuthViewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            
            // HeaderView
            VStack(alignment: .leading, spacing: 12){
                HStack{Spacer()}
                
                Text("Get Started.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Create your account")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight], width: 80, height: 80))
            
            VStack(spacing: 40) {
                CustomTextInputField(imageName: "envelope", placeholder: "Email", text: $email)
                
                CustomTextInputField(imageName: "person", placeholder: "Username", text: $username)
                
                CustomTextInputField(imageName: "person", placeholder: "Full Name", text: $fullName)
                
                PasswordInputView(imageName: "lock", placeholder: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            
            Button {
                viewModel.register(withEmail: email, password: password, fullname: fullName, username: username)
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Sign up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(.blue)
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.8), radius:10, x: 0,y:0)
            .padding()
            
            Spacer()
            
            NavigationLink {
                LoginView()
                    .navigationBarHidden(true)
            } label: {
                Text("Already have an account?")
                
                Text("Sign In")
                    .fontWeight(.semibold)
                    
            }
            .font(.footnote)
            .padding(.bottom, 32)
            .foregroundColor(.blue)

                
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
