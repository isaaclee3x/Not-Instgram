//
//  CreateAccountView.swift
//  Not Instgram
//
//  Created by Isaac Lee Jing Zhi on 29/6/21.
//

import SwiftUI

struct CreateAccountView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @State private var userID = 0
    
    @State private var isAlertPresented = false
    
    @State private var saveAccount = false
    
    @State var arrayOfPeople = []
    var body: some View {
        
        
        VStack {
            Text("Account")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(Font.system(size: 30))
                .padding()
                .frame(alignment: .leading)
                .offset(x: -120, y: -200)
            
            Text("Please enter your username and password here to create your account.")
                .offset(x: 0, y: -220)
                .padding()
                .font(Font.system(size: 15))
            
            Spacer()
                .frame(height: 10)
            
            VStack {
                TextField("  Username", text: $username)
                    .padding()
                    .background(Color.gray)
                    .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(5)
                    .offset(x: 0, y: -30)
                
                SecureField("  Password", text: $password)
                    .padding()
                    .background(Color.gray)
                    .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(5)
                
                SecureField("  Confirm Password", text: $confirmPassword)
                    .padding()
                    .background(Color.gray)
                    .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(5)
                    .offset(x: 0, y: 30)
                
                Button("Create") {
                    arrayOfPeople.append(PersonalData(username: username, password: password))
                    print(arrayOfPeople)
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.black)
                .cornerRadius(5)
                .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 120, y: 40)
                
            }
            .padding()
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}

