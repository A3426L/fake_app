//
//  ContentView.swift
//  fake_app Watch App
//
//  Created by A3426L on 2023/06/07.
//

import SwiftUI

struct ContentView: View {
    @State var str = "aiueo"
    @State var progressValue = 0.0
    @State var isLoad = false
    @State var isLoadView:Bool = false
    @State var value = 0
    @State var mytimer:Timer!

    var body: some View {
        NavigationStack(){
            ZStack{
                Button("Start"){
                    isLoad = true
                    str = "waitting...."
                    mytimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                        if progressValue < 100 {
                            progressValue += 1
                            print(progressValue)
                        }else if progressValue == 100{
                            sleep(1)
                            isLoadView = true
                            isLoad = false
                            str = "result"
                            mytimer.invalidate()
                            progressValue = 0.0
                        }
                    }
                }
                    .font(.title)
                    .bold()
                    .frame(width: 150,height: 150)
                    .foregroundColor(Color.black)
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
                    .overlay(
                        Circle()
                            .stroke(Color.yellow,lineWidth:10)
                    )
                if isLoad{
                    Rectangle()
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                    ProgressView("\(Int(progressValue))%", value: progressValue, total: 100)
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                }
            }
            .navigationDestination(isPresented:$isLoadView){
                LoadView()
            }
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
