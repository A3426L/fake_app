//
//  ContentView.swift
//  fake_app Watch App
//
//  Created by A3426L on 2023/06/07.
//

import SwiftUI

struct ContentView: View {
    @State var str = ""
    @State var progressValue = 0.0
    @State var isLoad = false
    @State var isLoadView = false
    @State var value = 0
    
    var body: some View {
            VStack{
                Text(str)
                ZStack{
                    if isLoad{
                        Rectangle()
                            .foregroundColor(.black)
                        ProgressView("\(Int(progressValue))%", value: progressValue, total: 100)
                            .progressViewStyle(CircularProgressViewStyle())
                        
                        
                    }
                }
                Button("take temp"){
                    //.Text("Take your temperture")
                    print("Button pushed")
                    isLoad = true
                    str = "waitting...."
                    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                        if progressValue < 100 {
                            progressValue += 1
                            print(progressValue)
                        }
                        if progressValue == 100{
                            isLoadView = true

                        }
                    }
                }
                .sheet(isPresented: $isLoadView){
                    LoadView()
                }
            }
            

        

    }


    
    func timer_count(){
        progressValue += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
