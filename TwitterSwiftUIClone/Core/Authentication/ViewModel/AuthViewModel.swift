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
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password : String) {
        print("DEBUG: Login with email: \(email)")
    }
    
    func register(withEmail email : String, password: String, fullname : String, username : String) {
        print("DEBUG: Register with email: \(email)")
    }
}
