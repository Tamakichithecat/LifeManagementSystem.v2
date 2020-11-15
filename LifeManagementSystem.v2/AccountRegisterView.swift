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
    @State public var registerUserName = ""
    @State public var registerPassword = ""
    @State public var registerPasswordAgain = ""
    @State public var accountRegisterConfirm = false
    @Environment(\.presentationMode) var presentationMode
 
    
    var body: some View {
        NavigationView{
         ZStack(alignment: .top){
         Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
             .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
            Form{
                Section(header: Text("User Nameの登録")){
                    TextField("登録するUser Nameを入力してください", text: $registerUserName)
                    
                }
                Section(header: Text("Passwordの登録")){
                    TextField("登録するPasswordを入力してください", text: $registerPassword)
                }
                
                Section(header: Text("Passwordの再登録")){
                    if(self.registerPasswordAgain != self.registerPassword){
                        Text("登録したいPasswordと一致していません")
                            .foregroundColor(.red)
                        
                    }
                    TextField("登録するPasswordを再度入力してください", text: $registerPasswordAgain)
                }
                
            }
            .background(Color.white)
                //end From
            Button(action: {self.accountRegisterConfirm.toggle()}){
                Text("確定")
            }
        
            .foregroundColor(.white)
            .frame(width: 120, height:30)
            .background(Color.blue)
            .cornerRadius(10)
            
            }
            .background(Color.white)
            //end VStack
            //確認画面
            if(self.accountRegisterConfirm == true){
        //    ZStack(alignment: .top){ !!!!
                Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
                             .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center){
                    Text("以下の内容で登録してもよろしいでしょうか")
                        .foregroundColor(Color.black)
                    Form{
                        Section(header: Text("User Name")){
                            Text(self.registerUserName)
                            }
                        Section(header: Text("Password")){
                            Text(self.registerPassword)
                            }
                                    
                        }
                            .background(Color.white)
                    // end Form
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
                //end Vstack
            }//end if
            
            }//end ZStack
            
        }//end navigation
        }
}

struct AccountRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        AccountRegisterView()
    }
}



