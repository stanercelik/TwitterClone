//
//  AuthViewModel.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 18.05.2023.
//

import Foundation
import Firebase

class AuthViewModel : ObservableObject {
    // Eğer user auth yaparsa bir değeri olacak diğer türlü nil
    @Published var userSession : FirebaseAuth.User?
    
    init() {
        
        // if user logged in, store the user in this variable 
        self.userSession = Auth.auth().currentUser
        print("DEBUG: User session is \(self.userSession?.uid )")
    }
    
    func login(withEmail email: String, password : String) {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign in with error: \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else {return}
            self.userSession = user
            print("DEBUG: Did log user in...")
        }
        
    }
    
    func register(withEmail email : String, password: String, fullname : String, username : String) {
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else {return}
            self.userSession = user
            
            print("Register user succesfully")
            print("DEBUG: User session is \(self.userSession)")
            
            let data = ["email" : email,
                        "username" : username.lowercased(),
                        "fullname" : fullname,
                        "uid" : user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                        print("DEBUG: Did upload user data...")
                }
        }
    }
    
    func signOut(){
//        set user session to nil so we show login view
        userSession = nil
//        signs user out on server - appi baştan başlatırsak login olacak
        try? Auth.auth().signOut()
    }
}
