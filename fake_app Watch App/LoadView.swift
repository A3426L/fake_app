//
//  LoadView.swift
//  fake_app Watch App
//
//  Created by A3426L on 2023/06/08.
//

import SwiftUI

struct LoadView: View {
    @State var randomNumber:Int = 1
    @State var str = "result"
    @State var disp = "unknown"
    @State var bool = false
    @State var mode:String = "normal"
    
    var body: some View {
        NavigationStack{
            ZStack{
                if mode == "normal"{
                    Color.green
                        .ignoresSafeArea()
                }else if mode == "fake"{
                    Color.red
                        .ignoresSafeArea()
                }
                Text(str)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }.onAppear{
                calculate_temp()
            }
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
    
    func calculate_temp(){
        if mode == "normal"{
            randomNumber = Int.random(in: 2...8)
            str = "36.\(randomNumber)"
        }else if mode == "fake"{
            randomNumber = Int.random(in: 0...4)
            str = "37.\(randomNumber)"
        }
    }

}

struct LoadView_Previews: PreviewProvider {
    @State static var isLoadView = true
    static var previews: some View {
        LoadView()
    }
}
