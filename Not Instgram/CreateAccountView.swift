//
//  CreateAccountView.swift
//  Not Instgram
//
//  Created by Isaac Lee Jing Zhi on 29/6/21.
//

import SwiftUI

struct CreateAccountView: View {
    
    var body: some View {
        VStack {
            Text("Account")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(Font.system(size: 30))
                .padding()
                .frame(alignment: .leading)
                .offset(x: -120, y: -350)
            
            
        }
    }
    
    struct CreateAccountView_Previews: PreviewProvider {
        static var previews: some View {
            CreateAccountView()
        }
    }
}
