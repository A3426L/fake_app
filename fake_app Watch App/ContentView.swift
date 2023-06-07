//
//  ContentView.swift
//  fake_app Watch App
//
//  Created by 山本聖留 on 2023/06/07.
//

import SwiftUI

struct ContentView: View {
    @State var randomNumber = 1
    @State var str = "waitting..."
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(str)
                .padding()
            Button("Button"){
                print("Button pushed")
                randomNumber = Int.random(in: 2...8)
                str = "36.\(randomNumber)"
            }
        }
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
