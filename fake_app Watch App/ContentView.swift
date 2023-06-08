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
    @State var progressValue = 0.0
    @State var isshowLoadView = false
    @State var isLoad = false
    
    var body: some View {
        VStack {
            
            
            Text(str)
                .padding()
            Button("Take your temperture"){
                //isshowLoadView = true
                print("Button pushed")
                isLoad = true
                //calculate_temp()
            }
            .overlay{
                if isLoad{
                    ZStack{
                        Color(.black)
                        ProgressView("\(Int(progressValue))%", value: progressValue, total: 100)
                            .progressViewStyle(CircularProgressViewStyle())
                    }
                }
            }
        }
    }

    func calculate_temp(){
        randomNumber = Int.random(in: 2...8)
        str = "36.\(randomNumber)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
