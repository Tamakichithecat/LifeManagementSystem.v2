//
//  MainView.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2020/07/31.
//  Copyright © 2020 岡崎隼斗. All rights reserved.
//

import Foundation
import SwiftUI

struct MainView: View{
    var body: some View{
       NavigationView{
        ZStack(alignment: .top){
        Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            
        VStack(alignment: .leading){
        Text("1.出費状況")
        Text("2.今月の活動実績")
        Text("3.消費財の備蓄状況")
        Text("4.定期購読・光熱費の状況")
            }
            
        }
       }
//navigation
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
