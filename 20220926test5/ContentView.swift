//
//  ContentView.swift
//  20220926test5
//
//  Created by 森川柏旭 on 2022/09/26.
//

import SwiftUI

struct ContentView: View {
    @State private var Roomage = "0"
    @State private var foodage = "0"
    @State private var momeyage = "0"
    @State private var title:String = "應找金額為:      00"
    @State private var isFocused = false
    var body: some View {
        VStack {
            Text("配達用計算機")
                .font(.title)
                .foregroundColor(.blue)
            HStack {
                Text("部屋番号")
                TextField("0", text: self.$Roomage)
                    .keyboardType(.numberPad)
            }.padding()
                .border(Color.red)
                .font(.title)
            HStack {
                Text("食料費")
                TextField("0", text: self.$foodage)
                    .keyboardType(.numberPad)
            }.padding()
            
                .border(Color.red)
                .font(.title)
                
            HStack {
                Text("預かり金額")
                TextField("0", text: self.$momeyage)
                    .keyboardType(.numberPad)
            }.padding().border(Color.red).font(.title)
            Text(self.title)
                .font(.title)
                .padding()
                .border(Color.blue)
            
                .frame(width: 300)
                
            HStack{
                Button(" キャンセル ") {
                    self.Roomage = ""
                    self.foodage = ""
                    self.momeyage = ""
                    self.title = "お返し金額: ..."
                }
                    .font(.title)
                    .frame(width: 170,height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding(20)
                
                Button(" 計算 ") {
                    
                        var foodageout = Double(self.foodage)!
                        var momeyageout = Double(self.momeyage)!
                    var answerout:Double = momeyageout - foodageout
                        self.title = "お返し金額:  \(answerout)"
                }
                .font(.title)
                .frame(width: 170,height: 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
                .padding(20)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
