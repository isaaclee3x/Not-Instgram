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
            .font(Font.custom("Helvetica Neue", size: 24))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding()
    }
}
struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.red, Color.yellow]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .mask(TextView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
