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
    
    @State private var isContentHiddenSecureFirstPass: Bool = false
    @State private var isContentHiddenSecureSecondPass: Bool = false
    @State private var saveAccount = false
    
    @State private var number1 = 1
    @State private var number2 = 1
    func doPasswordsMatch (_ firstPassword: String, _ secondPassword: String) {
        if firstPassword != secondPassword {
            isAlertPresented = true
        }
    }
    
    var body: some View {
        VStack {
            Text("Account")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(Font.system(size: 30))
                .padding()
                .frame(alignment: .leading)
                .offset(x: -120, y: -180)
            
            Text("Please enter your username and password here to create your account.")
                .offset(x: 0, y: -200)
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
                
                HStack {
                    if isContentHiddenSecureFirstPass == false {
                        SecureField("  Password", text: $password)
                            .padding()
                            .background(Color.gray)
                            .cornerRadius(5)
                            .offset(x: 17, y: 0)
                    }
                    
                    else {
                        TextField("  Password", text: $password)
                            .padding()
                            .background(Color.gray)
                            .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(5)
                            .offset(x: 17, y: 0)
                    }
                    
                    Button {
                        if number1 % 2 != 0 {
                            isContentHiddenSecureFirstPass = true
                            number1 += 1
                        }
                        else {
                            isContentHiddenSecureFirstPass = false
                            number1 += 1

                        }
                    } label: {
                        Image(systemName: "eye")
                    }
                    .offset(x: -30, y: 0)
                    .foregroundColor(.black)
                    .opacity(0.7)
                }
                
                HStack {
                    if isContentHiddenSecureSecondPass == false {
                        SecureField("  Confirm Password", text: $confirmPassword)
                            .padding()
                            .background(Color.gray)
                            .cornerRadius(5)
                            .offset(x: 17, y: 30)
                    }
                    
                    else {
                        TextField("  Confirm Password", text: $confirmPassword)
                            .padding()
                            .background(Color.gray)
                            .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(5)
                            .offset(x: 17, y: 30)
                    }
                    
                    
                    Button {
                        if number2 % 2 != 0 {
                            isContentHiddenSecureSecondPass = true
                            number2 += 1

                        }
                        else {
                            isContentHiddenSecureSecondPass = false
                            number2 += 1

                        }

                    } label: {
                        Image(systemName: "eye")
                    }
                    .offset(x: -30, y: 30)
                    .foregroundColor(.black)
                    .opacity(0.7)
                }
                
                Button("Create") {
                    doPasswordsMatch(password, confirmPassword)
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
        .alert(isPresented: $isAlertPresented) {
            Alert.init(title: Text("Your passwords do not match"), message: Text("Please confirm that your passwords match"), dismissButton: Alert.Button.default(Text("Continue")))
        }
    }
}
struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}

