//
//  ContentView.swift
//  Not Instgram
//
//  Created by Isaac Lee Jing Zhi on 29/6/21.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Welcome to Insta gram??")
            .font(Font.custom("Helvetica Neue", size: 27))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding()
    }
}
struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    
    @State private var isCreateSheetPresented = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.red, Color.yellow]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .mask(TextView())
                .padding()
            
            Spacer()
                .frame(height: 60)
            
            VStack {
                TextField(" Username", text: $username)
                    .frame(width: 350, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
                    .cornerRadius(5)
                
                SecureField(" Password", text: $password)
                    .frame(width: 350, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
                    .cornerRadius(5)
            }
            .offset(x: 0, y: -300)
            
            HStack {
                VStack {
                    Button("Forget Password") {
                        
                    }
                    .foregroundColor(.red)
                    .offset(x: -15, y: 0)
                    
                    Button("Create New Account") {
                        isCreateSheetPresented = true
                    }
                    .foregroundColor(.black)
                }
                .offset(x: -50, y: 0)
                
                Button("Login") {
                    
                }
                .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.pink)
                .foregroundColor(.black)
                .cornerRadius(5)
                .offset(x: -10 , y: 0)
            }
            .offset(x: 35, y: -300)
            .padding()
        }
        .sheet(isPresented: $isCreateSheetPresented) {
            CreateAccountView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
