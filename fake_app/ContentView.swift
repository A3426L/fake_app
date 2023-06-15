//
//  ContentView.swift
//  fake_app
//
//  Created by 山本聖留 on 2023/06/07.
//

import SwiftUI
import WatchConnectivity

struct ContentView: View {
    @State var mode = false
    var body: some View {
        NavigationStack{
            ZStack{
                if mode == false{
                    Color.green
                        .ignoresSafeArea()
                }else if mode == true {
                    Color.red
                        .ignoresSafeArea()
                }
                VStack {
                    //Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 350,height: 200)
                            .foregroundColor(Color.black)
                        Text(mode ? "fake":"normal")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                    }
                    Spacer()
                    ZStack{
                        Capsule()
                            .frame(width: 200,height: 150)
                            .foregroundColor(.yellow)
                        Toggle("",isOn: $mode)
                            .controlSize(.large)
                            .labelsHidden()
                            .padding()
                            .tint(.red)
                    }
                    Spacer()
                }
            }.navigationTitle("Mode")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
