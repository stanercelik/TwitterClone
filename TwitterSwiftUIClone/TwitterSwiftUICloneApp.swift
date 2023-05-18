//
//  TwitterSwiftUICloneApp.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 14.05.2023.
//
 
import SwiftUI
import Firebase

@main
struct TwitterSwiftUICloneApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                // ContentView()
                LoginView()
            }
        }
    }
}
