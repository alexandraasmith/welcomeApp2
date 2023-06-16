//
//  ContentView.swift
//  welcomeApp2
//
//  Created by Scholar on 6/8/23.
//

import SwiftUI

struct ContentView: View {
   @State private var textTitle = "What is your name?"
    @State private var name = ""
  @State private var textTitlee = "What is your age?"
    @State private var age = ""
    var body: some View {
        VStack {
            Text(textTitlee)
                .font(.title)
            
            TextField("Welcome, Name!",text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,width: 1)
                .padding()
          
            Button("Submit Name") {
                textTitle = "Welcome,\(name)"
            }
            Text(textTitlee)
                .font(.title)
            Button("Submit Age") {
                textTitlee ("Your age is\(age)")
                           }
            
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
