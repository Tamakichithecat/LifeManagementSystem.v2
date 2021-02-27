//
//  MainPageView.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2020/11/15.
//  Copyright © 2020 岡崎隼斗. All rights reserved.
//

import Foundation
import SwiftUI

struct MainPageView: View{
    var body: some View{
       NavigationView{
        ZStack(alignment: .topLeading){
            Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
                Text("1.出費状況")
                CustomListView(
                    price: 8300,
                    type: "電気代",
                    date: "2021/2/27"
                )
                Divider()
                CustomListView(
                    price: 155000,
                    type: "飛行機",
                    date: "2021/2/14"
                )
                Divider()
                CustomListView(
                    price: 3000,
                    type: "カラーリング",
                    date: "2021/2/8"
                )
                Divider()
                Text("2.今月の活動実績")
                Text("3.消費財の備蓄状況")
                Text("4.定期購読・光熱費の状況")
            }
            .background(Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0))
        }
        }//navigation
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
