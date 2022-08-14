//
//  Register.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2022/07/16.
//  Copyright © 2022 岡崎隼斗. All rights reserved.
//

import Foundation

struct Dec_R: Codable{
    let res: String?
}

struct RegisterStatus{
   static var status: Bool = false
    //mutating func changeTure(){
       // self.status = false
    //}
    
}
extension String {
    
    var urlEncoded_R: String {
        // 半角英数字 + "/?-._~" のキャラクタセットを定義
        let charset = CharacterSet.alphanumerics.union(.init(charactersIn: "/?-._~"))
        // 一度すべてのパーセントエンコードを除去(URLデコード)
        let removed = removingPercentEncoding ?? self
        // あらためてパーセントエンコードして返す
        return removed.addingPercentEncoding(withAllowedCharacters: charset) ?? removed
    }
    
    
    
}
class Register{
   
    
   
    func register(userName: String, password: String)-> Void{
        
    
        //var torf : Bool = false
        var url = URLComponents(string: "https://localhost:8443/okzk/CreateAccount.php")!
        url.queryItems = [
            URLQueryItem(name: "accountUsername", value: userName),
            URLQueryItem(name: "accountPassword", value: password)
        ]
        
        let req = URLRequest(url: url.url!)
        let session = URLSession(configuration: .default, delegate: AllowsSelfSignedCertificateDelegate(), delegateQueue: nil)
        let task = session.dataTask(with: req, completionHandler: {(data, res ,err) in
             if data != nil {
                //let phpres = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                let decoder = JSONDecoder()
                let phpres = try? decoder.decode(Dec_R.self, from: data!).res
                if phpres == "account is created"{
                           //torf = true
                    //Boolなどの値を返すログインの実装はresume = taskの実行 = タスク自体のcompletionHandlerクロージャーはVoidではできない（あるいは大幅な書き換え場必要）なので別方式のログインを考えるべき
                    //seission and cookie
                    //LoginStatus().changeTure()
                    RegisterStatus.status = true
                }
                else if phpres == "account is not created"{
                           //torf = false
                       }else{
                           //torf = false
                }
                           }else{
                //エラー時の処理
            }
        })
        task.resume()
        
    }
    
}
