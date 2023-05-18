//
//  ContentView.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 14.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu = false
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        Group{
            // No user logged in
            if viewModel.userSession == nil {
                LoginView()
            } else {
                // have a logged in user
                 mainInterface
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}

extension ContentView {
    var  mainInterface : some View {
        ZStack(alignment: .topLeading){
            MainTabView()
                .navigationBarHidden(showMenu)
            if showMenu {
                ZStack{
                    Color.black
                        .opacity(showMenu ? 0.25 : 0.0)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300, y: 0)
                .background(showMenu ? Color.white : Color.clear)
            
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut) {
                        showMenu.toggle()
                    }
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }

            }
        }
        .onAppear {
            showMenu = false
        }
    }
}
