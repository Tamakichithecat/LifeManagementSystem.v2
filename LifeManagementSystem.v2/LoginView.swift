//
//  ContentView.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2020/07/31.
//  Copyright © 2020 岡崎隼斗. All rights reserved.
//
import Foundation
import SwiftUI

    struct LoginView: View {
        
        @State public var userName = ""
        @State public var password = ""
        @State public var isValidUser = false
        @State public var hasError = true
        @State private var isPushed = false
        @State public var accountRegister = false

        init(){
            UITableView.appearance().backgroundColor = .clear
        }
        
            var body: some View {
                NavigationView{
                ZStack(alignment: .leading){
                    Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
                        .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center){
                Text("Life Manager")
                    .font(.largeTitle)
                    .padding()
                Text("User Name")
                    .font(.body)
                    .padding()
                    .frame(alignment: .bottomLeading)
                TextField("input here", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Text("Password")
                    .font(.body)
                    .padding()
                    .frame(alignment: .bottomLeading)
                SecureField("input here", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    if(!self.hasError){
                        Text("ログインに失敗しました")
                            .foregroundColor(.red)
                    }
                    
                    HStack{//ボタン並列用
                    VStack {
                    Button("OK") {
                        Login().login(userName: self.userName, password: self.password)
                        // 通信の代わりに遅延させる
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            self.isValidUser = LoginStatus.status
                            if(!self.isValidUser){self.hasError = false}
                            // データの取得=遅延後Push
                            self.isPushed = true
                        }
                    }
                        
                        if(self.isPushed){
                    NavigationLink(destination: MainView(), isActive: $isValidUser){
                        EmptyView()
                        .onTapGesture {
                                             }
                }
                        }//end if
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 70, height:30)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    VStack {
                        Button(action: {self.accountRegister.toggle()}){
                            Text("アカウント作成")
                        }.sheet(isPresented: $accountRegister){
                            AccountRegisterView()
                        }
                        .foregroundColor(.white)
                        .frame(width: 150, height:30)
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                    }//ボタン並列用
                    }
                    .background(Color.white)
                }
                    }
            .navigationBarHidden(true)
            }
            
        }




struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
