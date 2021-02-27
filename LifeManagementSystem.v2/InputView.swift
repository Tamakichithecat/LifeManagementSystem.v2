//
//  inputView.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2020/11/15.
//  Copyright © 2020 岡崎隼斗. All rights reserved.
//

import Foundation
import SwiftUI

struct InputView: View{
    @State public var inputConfirm = false
    @State public var registerPrice = ""
    @State public var registerDate = Date()
    @State public var registerType = 0
    @State public var memo = ""
    var types = ["01.固定費","02.食費","03.日用品費","04.交通費","05.医療費","06.教養•娯楽費","07.交際費","08.教育費","09.特別費"]
    var body: some View{
       NavigationView{
        ZStack(alignment: .top){
        Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
            Form{
                Section(header: Text("入力")){
                    TextField("¥", text: $registerPrice)
                    DatePicker(selection: $registerDate, label: {Text("日付を入力してください")})
                    Picker(selection: $registerType, label: Text("登録種類を入力してください"))
                        {
                    //登録種別選択ロジック
                        ForEach(0..<types.count){
                            Text(self.types[$0])
                        }
                    }
                    TextField("メモ", text: $memo)
                }
                
            }
            .background(Color.white)
                //end From
            
                    Button(action: {self.inputConfirm.toggle()}){
                        Text("保存")
                    }.sheet(isPresented: $inputConfirm){
                        InputConfirmView()
                    }
                    .foregroundColor(.white)
                    .frame(width: 120, height:30)
                    .background(Color.blue)
                    .cornerRadius(10)
                

          
            }
        .background(Color.white)
            //end VStack
        }
       }
       .navigationBarTitle("支出/収入登録")
//navigation
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}



struct InputConfirmView: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
       NavigationView{
        ZStack(alignment: .top){
        Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)

            VStack(alignment: .center){
                Text("以下の内容で登録してもよろしいでしょうか")
                    .foregroundColor(Color.black)
                
                Button(action:{self.presentationMode.wrappedValue.dismiss()}){
                    Text("登録")//.onTapGesture {
           //アカウント登録用関数を記載したいが遷移できなくなる可能性あり
                              // }
                }
                    .foregroundColor(.white)
                    .frame(width: 120, height:30)
                    .background(Color.blue)
                    .cornerRadius(10)
                
            }
            .background(Color.white)
            //end VStack
        }//end ZStack
       }
    }
}


struct InputConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        InputConfirmView()
    }
}
