//
//  LoginView.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 18.05.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        // Parent
        VStack{
            
            // HeaderView
            VStack(alignment: .leading, spacing: 12){
                HStack{Spacer()}
                
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome Back")
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
                
                PasswordInputView(imageName: "lock", placeholder: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack{
                Spacer()
                
                NavigationLink {
                    Text("Reset Password View")
                } label: {
                    Text("Forget password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .padding(.top)
                        .padding(.trailing, 24)
                }

            }
            
            Button {
                viewModel.login(withEmail: email, password: password)
            } label: {
                Text("Sign in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(.blue)
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.8), radius:10,
                    x: 0,y:0)

            
            
            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                Text("Don't have an account?")
                
                Text("Sign Up")
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
