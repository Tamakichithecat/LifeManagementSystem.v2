//
//  AccountRegisterForm.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2020/11/15.
//  Copyright © 2020 岡崎隼斗. All rights reserved.
//

import Foundation
import SwiftUI

struct AccountRegisterView: View{
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    
    @State public var registerUserName = ""
    @State public var registerPassword = ""
    @State public var registerPasswordAgain = ""
    @State public var accountRegisterConfirm = false
    @State public var isValidRegister = false
    @State public var hasError = true
    @State private var isPushed = false
    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .top){
                Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
                    .edgesIgnoringSafeArea(.all)
                if(self.accountRegisterConfirm == false){
                VStack(alignment: .center,spacing: 0){
                    Text("アカウント登録")
                        .font(.largeTitle)
                        .padding()
                    Form{
                        Section(header: Text("User Nameの登録")){
                            TextField("登録するUser Nameを入力してください", text: $registerUserName).foregroundColor(.black)
                        }
                        
                        Section(header: Text("Passwordの登録")){
                            TextField("登録するPasswordを入力してください", text: $registerPassword).foregroundColor(.black)
                        }
                        
                        Section(header: Text("Passwordの再登録")){
                            TextField("登録するPasswordを再度入力してください", text: $registerPasswordAgain).foregroundColor(Color.black)
                            if(self.registerPasswordAgain != self.registerPassword){
                                Text("登録したいPasswordと一致していません")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                    .frame(height:350)
                    .foregroundColor(.black)
                    //end From
                    HStack{//ボタン並列用
                        Button(action: {dismiss()}){
                            Text("キャンセル")
                        }
                        .foregroundColor(.white)
                        .frame(width: 120, height:30)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                        Button(action: {self.accountRegisterConfirm.toggle()}){
                            Text("確定")
                        }
                        .foregroundColor(.white)
                        .frame(width: 120, height:30)
                        .background(Color.blue)
                        .cornerRadius(10)
                    }.background(Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0))//ボタン並列用
                }
                .background(Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0))
                //end VStack
            }//end if
                //確認画面
                if(self.accountRegisterConfirm == true){
                    //    ZStack(alignment: .top){ !!!!
                    
                    VStack(alignment: .center,spacing:0){
                        Text("登録内容の確認")
                            .font(.largeTitle)
                            .padding()
                        Text("以下の内容で登録してもよろしいでしょうか")
                            .foregroundColor(Color.black)
                        Form{
                            Section(header: Text("User Name")){
                                Text(self.registerUserName).foregroundColor(Color.black)
                            }
                            Section(header: Text("Password")){
                                Text(self.registerPassword).foregroundColor(Color.black)
                            }
                        }
                        .frame(height: 250)
                        .foregroundColor(.black)
                        .background(Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0))
                        HStack{//ボタン並列用
                            Button(action: {self.accountRegisterConfirm.toggle()}){
                                Text("修正")
                            }
                            .foregroundColor(.white)
                            .frame(width: 120, height:30)
                            .background(Color.blue)
                            .cornerRadius(10)
                            
                            Button("登録"){
                                Register().register(userName: self.registerUserName, password: self.registerPassword)
                                dismiss()
                            }
                            .foregroundColor(.white)
                            .frame(width: 120, height:30)
                            .background(Color.blue)
                            .cornerRadius(10)
                        }//ボタン並列用
                    }
                    //end Vstack
                }//end if
                
            }//end ZStack
        }
        .background(Color.blue)//end navigation
    }
}

struct AccountRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        AccountRegisterView()
    }
}



