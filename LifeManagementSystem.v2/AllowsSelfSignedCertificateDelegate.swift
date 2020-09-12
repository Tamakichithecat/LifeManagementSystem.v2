//
//  AllowsSelfSignedCertificateDelegate.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2020/08/15.
//  Copyright © 2020 岡崎隼斗. All rights reserved.
//

import Foundation

class AllowsSelfSignedCertificateDelegate: NSObject, URLSessionDelegate {
func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
    let protectionSpace = challenge.protectionSpace

    // 認証チャレンジタイプがサーバ認証かどうか確認
    // 通信対象のホストは想定しているものかどうか確認
    guard protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust,
        protectionSpace.host == "okzk",
        let serverTrust = protectionSpace.serverTrust else {
            // 特別に検証する対象ではない場合はデフォルトのハンドリングを行う
            completionHandler(.performDefaultHandling, nil)
            return
    }

    // 受け取った証明書は許可すべきかどうか確認
    // (serverTrustオブジェクトを用いて.cerファイルや.derファイルと突き合わせるなど)
    if checkValidity(of: serverTrust) {
        // 通信を継続して問題ない場合は、URLCredentialオブジェクトを作って返す
        completionHandler(.useCredential, URLCredential(trust: serverTrust))
    } else {
        // 通信を中断させたい場合は、cancelを返す
                    completionHandler(.cancelAuthenticationChallenge, nil)
                }
            }
    func checkValidity(of: SecTrust)->Bool{
        
    //return false
        return true
    }
    
    
        }
