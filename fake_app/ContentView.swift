//
//  ContentView.swift
//  fake_app
//
//  Created by 山本聖留 on 2023/06/07.
//

import SwiftUI
import WatchConnectivity

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
