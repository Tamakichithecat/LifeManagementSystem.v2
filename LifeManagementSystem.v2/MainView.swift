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
    var body: some View {
            TabView {
                MainPageView()
                    .tabItem {
                        VStack {
                            Image(systemName: "a")
                            Text("メイン")
                        }
                }.tag(1)
                InputView()
                    .tabItem {
                        VStack {
                            Image(systemName: "a")
                            Text("入力")
                        }
                }.tag(2)
            }
        }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
