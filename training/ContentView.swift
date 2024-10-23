//
//  ContentView.swift
//  training
//
//  Created by Jundi HD on 23/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var Username = ""
    @State private var Password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var ShowingLoginScreen = false
    var body: some View {
        NavigationView{
            VStack{
                Text("Log in")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                TextField("Username", text: $Username)
                    .padding()
                    .frame(width: 300,height: 50)
                    .background(Color.black.opacity(0.05))
                    .border(.red, width:CGFloat(wrongUsername))
                SecureField("Password", text: $Password)
                    .padding()
                    .frame(width: 300,height: 50)
                    .background(Color.black.opacity(0.05))
                    .border(.red, width:CGFloat(wrongPassword))
                Button("Login"){
                    authenticateUser(Username: Username, Password: Password)
                }
                NavigationLink(destination: Text("Berhasil login"), isActive: $ShowingLoginScreen){
                    EmptyView()
                }
            }
        }
        .navigationBarHidden(true)
    }
    func authenticateUser(Username: String, Password: String){
        if Username == "Saifudin"{
            wrongUsername = 0
            if Password == "Jaddaudin"{
                wrongPassword = 0
                ShowingLoginScreen = true
            }else{
                wrongPassword = 2
            }
        }else{
            wrongUsername = 2
        }
    }
         
}


#Preview {
    ContentView()
}
