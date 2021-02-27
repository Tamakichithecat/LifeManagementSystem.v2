//
//  Login.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2020/07/31.
//  Copyright © 2020 岡崎隼斗. All rights reserved.
//

import Foundation

struct Dec: Codable{
    let res: String?
}

struct LoginStatus{
   static var status: Bool = false
    //mutating func changeTure(){
       // self.status = false
    //}
    
}
extension String {
    
    var urlEncoded: String {
        // 半角英数字 + "/?-._~" のキャラクタセットを定義
        let charset = CharacterSet.alphanumerics.union(.init(charactersIn: "/?-._~"))
        // 一度すべてのパーセントエンコードを除去(URLデコード)
        let removed = removingPercentEncoding ?? self
        // あらためてパーセントエンコードして返す
        return removed.addingPercentEncoding(withAllowedCharacters: charset) ?? removed
    }
    
    
    
}
class Login{
   
    
   
    func login(userName: String, password: String)-> Void{
        
    
        //var torf : Bool = false
        var url = URLComponents(string: "https://localhost:8443/okzk/IsAccountExist.php")!
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
                let phpres = try? decoder.decode(Dec.self, from: data!).res
                if phpres == "login success"{
                           //torf = true
                    //Boolなどの値を返すログインの実装はresume = taskの実行 = タスク自体のcompletionHandlerクロージャーはVoidではできない（あるいは大幅な書き換え場必要）なので別方式のログインを考えるべき
                    //seission and cookie
                    //LoginStatus().changeTure()
                    LoginStatus.status = true
                }
                else if phpres == "login fail"{
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
