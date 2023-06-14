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
    @State var bool = false
    @State var mode:String = "normal"
    var body: some View {
        VStack{
            Text(str)
        }.onAppear{
            if mode == "normal"{
                calculate_temp()
            }
        }
    }
    
    func calculate_temp(){
        randomNumber = Int.random(in: 2...8)
        str = "36.\(randomNumber)"
    }

}

struct LoadView_Previews: PreviewProvider {
    @State static var isLoadView = true
    static var previews: some View {
        LoadView()
    }
}
