//
//  LoadView.swift
//  fake_app Watch App
//
//  Created by 山本聖留 on 2023/06/08.
//

import SwiftUI

struct LoadView: View {
    @State var randomNumber = 1
    @State var str = ""
    @State var bool = false
    var body: some View {
        VStack{
            Text(str)
            Button("print result"){
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
    static var previews: some View {
        LoadView()
    }
}
