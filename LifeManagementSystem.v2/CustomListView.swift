//
//  CustomListView.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2021/02/27.
//  Copyright © 2021 岡崎隼斗. All rights reserved.
//

import Foundation
import SwiftUI
struct CustomListView: View{
    
    var price: Int
    var type: String
    var date: String
    
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text(date).font(.subheadline)
                Text(type).font(.largeTitle)
            }
            Text("¥" + String(price)).font(.largeTitle)
        }
    }

}

struct CustomListView_Previews: PreviewProvider {
    static var previews: some View {
        CustomListView(
            price: 12345,
            type: "用途の名称",
            date: "yyyy/mm/dd"
        )
    }
}
