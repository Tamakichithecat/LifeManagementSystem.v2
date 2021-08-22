//
//  inputView.swift
//  LifeManagementSystem.v2
//
//  Created by 岡崎隼斗 on 2020/11/15.
//  Copyright © 2020 岡崎隼斗. All rights reserved.
//

import Foundation
import SwiftUI

struct Type: Identifiable{
    var id: Int = 0
    var type: String
    var subtypes: [SubType] = []
}

struct SubType: Identifiable{
    var id: Int = 0
    var subtype: String
    var minitypes: [MiniType] = []
}

struct MiniType: Identifiable{
    var id: Int = 0
    var minitype: String
}

class Model: ObservableObject{
    let types: [Type] = [Type(id: 0, type: "固定費", subtypes: [SubType(id: 0, subtype: "光熱費", minitypes: [MiniType(id: 0, minitype: "電気代"),MiniType(id: 1, minitype: "水道代"),MiniType(id: 2, minitype: "ガス代"),MiniType(id: 3, minitype: "灯油代"),MiniType(id: 4, minitype: "その他光熱費")]),SubType(id: 1, subtype: "通信費", minitypes: [MiniType(id: 0, minitype: "郵便料"),MiniType(id: 1, minitype: "固定電話通信料"),MiniType(id: 2, minitype: "携帯電話通信料"),MiniType(id: 3, minitype: "運送料"),MiniType(id: 5, minitype: "NHK放送受信料"),MiniType(id: 6, minitype: "ケーブルテレビ受信料"),MiniType(id: 7, minitype: "その他通信料")]),SubType(id: 2, subtype: "講読料", minitypes: [MiniType(id: 0, minitype: "インターネットサービス購読料"),MiniType(id: 1, minitype: "宅配サービス講読料"),MiniType(id: 2, minitype: "新聞・雑誌講読料"),MiniType(id: 3, minitype: "その他講読料")]),SubType(id: 3, subtype: "保険料", minitypes: [MiniType(id: 0, minitype: "非貯蓄型生命保険料"),MiniType(id: 1, minitype: "貯蓄型生命保険料"),MiniType(id: 2, minitype: "地震・火災保険"),MiniType(id: 3, minitype: "医療保険料"),MiniType(id: 4, minitype: "その他保険料")]),SubType(id: 4, subtype: "税金", minitypes: [MiniType(id: 0, minitype: "医療保険料"),MiniType(id: 1, minitype: "介護保険料"),MiniType(id: 2, minitype: "公的年金"),MiniType(id: 3, minitype: "雇用保険料"),MiniType(id: 4, minitype: "その他社会保障関連費用")]),SubType(id: 5, subtype: "社会保険料", minitypes: [MiniType(id: 0, minitype: "医療保険料"),MiniType(id: 1, minitype: "介護保険料"),MiniType(id: 2, minitype: "公的年金"),MiniType(id: 3, minitype: "雇用保険料"),MiniType(id: 4, minitype: "その他社会保障関連費用")]),SubType(id: 6, subtype: "ローン", minitypes: [MiniType(id: 0, minitype: "住宅ローン"),MiniType(id: 1, minitype: "自動車ローン")])]),Type(id: 1, type: "食費", subtypes: [SubType(id: 0, subtype: "食材費", minitypes: [MiniType(id: 0, minitype: "穀類"),MiniType(id: 1, minitype: "野菜"),MiniType(id: 2, minitype: "魚介"),MiniType(id: 3, minitype: "肉"),MiniType(id: 4, minitype: "乳製品・卵"),MiniType(id: 5, minitype: "果物"),MiniType(id: 6, minitype: "その他食材")]),SubType(id: 1, subtype: "調理済み食品代", minitypes: [MiniType(id: 0, minitype: "お惣菜"),MiniType(id: 1, minitype: "弁当"),MiniType(id: 2, minitype: "軽食"),MiniType(id: 3, minitype: "その他調理済み食品")]),SubType(id: 2, subtype: "インスタント食品", minitypes: [MiniType(id: 0, minitype: "インスタント麺"),MiniType(id: 1, minitype: "インスタントスープ"),MiniType(id: 2, minitype: "レトルトカレー"),MiniType(id: 3, minitype: "その他インスタント食品")]),SubType(id: 3, subtype: "菓子代", minitypes: [MiniType(id: 1, minitype: "ケーキ"),MiniType(id: 2, minitype: "チョコレート"),MiniType(id: 3, minitype: "和菓子"),MiniType(id: 4, minitype: "その他菓子")]),SubType(id: 4, subtype: "飲料代", minitypes: [MiniType(id: 0, minitype: "酒類"),MiniType(id: 1, minitype: "コーヒー"),MiniType(id: 2, minitype: "お茶"),MiniType(id: 3, minitype: "清涼飲料水"),MiniType(id: 4, minitype: "その他飲料")]),SubType(id: 5, subtype: "外食費")]),Type(id: 2, type: "日用品費", subtypes: [SubType(id: 0, subtype: "衣類代", minitypes: [MiniType(id: 0, minitype: "和服"),MiniType(id: 1, minitype: "アウター"),MiniType(id: 2, minitype: "インナー・下着"),MiniType(id: 3, minitype: "トップス"),MiniType(id: 4, minitype: "パンツ・スカート"),MiniType(id: 5, minitype: "帽子"),MiniType(id: 6, minitype: "マフラー・スカーフ"),MiniType(id: 7, minitype: "手袋"),MiniType(id: 8, minitype: "履き物"),MiniType(id: 9, minitype: "傘"),MiniType(id: 10, minitype: "被覆関連サービス")]),SubType(id: 1, subtype: "家具代", minitypes: [MiniType(id: 0, minitype: "テーブル・椅子"),MiniType(id: 1, minitype: "収納"),MiniType(id: 2, minitype: "その他家具")]),SubType(id: 2, subtype: "家電代", minitypes: [MiniType(id: 0, minitype: "空調"),MiniType(id: 1, minitype: "洗濯機"),MiniType(id: 2, minitype: "掃除機"),MiniType(id: 3, minitype: "照明"),MiniType(id: 4, minitype: "キッチン家電"),MiniType(id: 5, minitype: "美容家電"),MiniType(id: 6, minitype: "オーディオ"),MiniType(id: 7, minitype: "PC"),MiniType(id: 8, minitype: "タブレット"),MiniType(id: 9, minitype: "スマートフォン・携帯電話"),MiniType(id: 10, minitype: "テレビ"),MiniType(id: 11, minitype: "家電装備品"),MiniType(id: 12, minitype: "その他家電")]),SubType(id: 3, subtype: "室内装備・装飾代", minitypes: [MiniType(id: 0, minitype: "カーテン"),MiniType(id: 1, minitype: "観葉植物"),MiniType(id: 2, minitype: "インテリア雑貨"),MiniType(id: 3, minitype: "その他装備・装飾代")]),SubType(id: 4, subtype: "寝具代", minitypes: [MiniType(id: 0, minitype: "ベッド•マットレス"),MiniType(id: 1, minitype: "布団・毛布"),MiniType(id: 2, minitype: "枕関連"),MiniType(id: 3, minitype: "その他寝具")]),SubType(id: 5, subtype: "家事生活雑貨代", minitypes: [MiniType(id: 0, minitype: "食器"),MiniType(id: 1, minitype: "調理器具"),MiniType(id: 2, minitype: "洗濯器具"),MiniType(id: 3, minitype: "掃除器具"),MiniType(id: 4, minitype: "入浴器具・用品"),MiniType(id: 5, minitype: "その他家事生活雑貨")]),SubType(id: 6, subtype: "家庭用消耗品代", minitypes: [MiniType(id: 0, minitype: "洗濯洗剤"),MiniType(id: 1, minitype: "浴用石鹸"),MiniType(id: 2, minitype: "歯磨き"),MiniType(id: 3, minitype: "キッチン洗剤"),MiniType(id: 4, minitype: "清掃用消費財"),MiniType(id: 5, minitype: "紙消費財"),MiniType(id: 6, minitype: "その他家庭用消耗品")]),SubType(id: 7, subtype: "家事サービス費", minitypes: [MiniType(id: 0, minitype: "家事代行"),MiniType(id: 1, minitype: "シッター"),MiniType(id: 2, minitype: "清掃代"),MiniType(id: 3, minitype: "その他家事サービス")]),SubType(id: 8, subtype: "家賃", minitypes: [MiniType(id: 0, minitype: "家賃"),MiniType(id: 1, minitype: "地代"),MiniType(id: 2, minitype: "その他家賃")]),SubType(id: 9, subtype: "庭手入れ代", minitypes: [MiniType(id: 0, minitype: "植物代"),MiniType(id: 1, minitype: "剪定・伐採・除草代"),MiniType(id: 2, minitype: "倉庫代"),MiniType(id: 3, minitype: "庭用雑貨代"),MiniType(id: 4, minitype: "その他庭関連費用")]),SubType(id: 10, subtype: "自宅修繕維持費", minitypes: [MiniType(id: 0, minitype: "工具"),MiniType(id: 1, minitype: "リフォーム代"),MiniType(id: 2, minitype: "設備修繕費"),MiniType(id: 3, minitype: "設備工事費"),MiniType(id: 4, minitype: "その他自宅修繕維持費")]),SubType(id: 11, subtype: "理美容用品", minitypes: [MiniType(id: 0, minitype: "ヘアケア・散髪代"),MiniType(id: 1, minitype: "マッサージ・エステ代"),MiniType(id: 2, minitype: "ネイルケア代"),MiniType(id: 3, minitype: "整形代"),MiniType(id: 4, minitype: "その他理美容サービス代"),MiniType(id: 5, minitype: "化粧品"),MiniType(id: 6, minitype: "ボディケア用品"),MiniType(id: 7, minitype: "スキンケア用品"),MiniType(id: 8, minitype: "その他理美容用品")]),SubType(id: 12, subtype: "タバコ", minitypes: [MiniType(id: 0, minitype: "紙タバコ"),MiniType(id: 1, minitype: "シーシャ"),MiniType(id: 2, minitype: "葉巻"),MiniType(id: 3, minitype: "その他タバコ")])]),Type(id: 3, type: "交通費", subtypes: [SubType(id: 0, subtype: "鉄道", minitypes: [MiniType(id: 0, minitype: "鉄道乗車券"),MiniType(id: 1, minitype: "鉄道定期券"),MiniType(id: 2, minitype: "新幹線・特急券"),MiniType(id: 3, minitype: "その他鉄道関連交通費")]),SubType(id: 1, subtype: "バス・タクシー", minitypes: [MiniType(id: 0, minitype: "タクシー運賃"),MiniType(id: 1, minitype: "バス乗車券"),MiniType(id: 2, minitype: "バス定期"),MiniType(id: 3, minitype: "その他バス・タクシー関連交通費")]),SubType(id: 2, subtype: "自家用車・レンタカー", minitypes: [MiniType(id: 0, minitype: "ガソリン代"),MiniType(id: 1, minitype: "自動車購入・整備費"),MiniType(id: 2, minitype: "駐車場借料"),MiniType(id: 3, minitype: "高速道路料金"),MiniType(id: 4, minitype: "自動車保険料"),MiniType(id: 5, minitype: "レンタカー料金"),MiniType(id: 6, minitype: "カーシェア料金"),MiniType(id: 7, minitype: "その他自動車・レンタカー関連料金")]),SubType(id: 3, subtype: "飛行機・ヘリコプター", minitypes: [MiniType(id: 0, minitype: "航空運賃"),MiniType(id: 1, minitype: "ヘリコプター航空運賃"),MiniType(id: 2, minitype: "遊覧飛行運賃"),MiniType(id: 3, minitype: "その他飛行機関連料金"),MiniType(id: 4, minitype: "プライベート機購入・整備費")]),SubType(id: 4, subtype: "船", minitypes: [MiniType(id: 0, minitype: "船舶乗車券"),MiniType(id: 1, minitype: "船舶定期券"),MiniType(id: 2, minitype: "遊覧船運賃"),MiniType(id: 3, minitype: "船舶サービス追加料金"),MiniType(id: 4, minitype: "船舶購入・維持費"),MiniType(id: 5, minitype: "その他船関連料金")]),SubType(id: 5, subtype: "自転車", minitypes: [MiniType(id: 0, minitype: "自転車購入・整備費"),MiniType(id: 1, minitype: "駐輪場借料"),MiniType(id: 2, minitype: "自転車保険料"),MiniType(id: 3, minitype: "その他自転車関連料金")]),SubType(id: 6, subtype: "バイク", minitypes: [MiniType(id: 0, minitype: "バイク購入・維持費"),MiniType(id: 1, minitype: "ガソリン代"),MiniType(id: 2, minitype: "駐輪場借料"),MiniType(id: 3, minitype: "その他バイク関連料金")]),SubType(id: 7, subtype: "その他交通費")]),Type(id: 4, type: "医療費", subtypes: [SubType(id: 0, subtype: "医薬品・器具", minitypes: [MiniType(id: 0, minitype: "内服薬"),MiniType(id: 1, minitype: "健康食品"),MiniType(id: 2, minitype: "サプリメント"),MiniType(id: 3, minitype: "保険医療器具"),MiniType(id: 4, minitype: "その他医薬品・器具関連費用")]),SubType(id: 1, subtype: "医療サービス代", minitypes: [MiniType(id: 0, minitype: "診療代"),MiniType(id: 1, minitype: "入院料"),MiniType(id: 2, minitype: "医療マッサージ代"),MiniType(id: 3, minitype: "治療代"),MiniType(id: 4, minitype: "手術代"),MiniType(id: 5, minitype: "ワクチン・健康診断"),MiniType(id: 6, minitype: "その他医療サービス代")]),SubType(id: 2, subtype: "介護関連費", minitypes: [MiniType(id: 0, minitype: "介護サービス代"),MiniType(id: 1, minitype: "介護用品代"),MiniType(id: 2, minitype: "その他介護関連費")]),SubType(id: 3, subtype: "その他医療費")]),Type(id: 5, type: "教養・娯楽費", subtypes: [SubType(id: 0, subtype: "玩具代", minitypes: [MiniType(id: 0, minitype: "ゲーム機・ゲームソフト"),MiniType(id: 1, minitype: "その他玩具")]),SubType(id: 1, subtype: "スポーツ代", minitypes: [MiniType(id: 0, minitype: "スポーツ用品"),MiniType(id: 1, minitype: "運動場等使用料"),MiniType(id: 2, minitype: "スポーツ観戦費用"),MiniType(id: 3, minitype: "その他スポーツ費用")]),SubType(id: 2, subtype: "文具代", minitypes: [MiniType(id: 0, minitype: "筆記・絵画用具"),MiniType(id: 1, minitype: "ノート・紙製品"),MiniType(id: 2, minitype: "その他学習用文具"),MiniType(id: 3, minitype: "その他教養・趣味用文具")]),SubType(id: 3, subtype: "書籍・印刷物代", minitypes: [MiniType(id: 0, minitype: "小説本"),MiniType(id: 1, minitype: "漫画"),MiniType(id: 2, minitype: "専門書・図鑑"),MiniType(id: 3, minitype: "新聞"),MiniType(id: 4, minitype: "雑誌"),MiniType(id: 5, minitype: "その他書籍・印刷物")]),SubType(id: 4, subtype: "ペット代", minitypes: [MiniType(id: 0, minitype: "ペット購入代"),MiniType(id: 1, minitype: "ペット検診・ワクチン費用"),MiniType(id: 2, minitype: "ペット用品"),MiniType(id: 3, minitype: "餌"),MiniType(id: 4, minitype: "その他ペット費用")]),SubType(id: 5, subtype: "映像作品代", minitypes: [MiniType(id: 0, minitype: "映画館"),MiniType(id: 1, minitype: "映画レンタル料"),MiniType(id: 2, minitype: "その他映画関連費用")]),SubType(id: 6, subtype: "音楽代", minitypes: [MiniType(id: 0, minitype: "楽器購入費"),MiniType(id: 1, minitype: "楽器維持費"),MiniType(id: 2, minitype: "演奏施設利用費"),MiniType(id: 3, minitype: "その他音楽関連費")]),SubType(id: 7, subtype: "習い事代", minitypes: [MiniType(id: 0, minitype: "サークル活動費"),MiniType(id: 1, minitype: "習い事月謝"),MiniType(id: 2, minitype: "その他習い事関連費用")]),SubType(id: 8, subtype: "旅行・観光•宿泊代", minitypes: [MiniType(id: 0, minitype: "宿泊費"),MiniType(id: 1, minitype: "パッケージ旅行"),MiniType(id: 2, minitype: "遊園地•公園"),MiniType(id: 3, minitype: "博物館•美術館"),MiniType(id: 4, minitype: "その他旅行関連費")]),SubType(id: 9, subtype: "イベント代", minitypes: [MiniType(id: 0, minitype: "ライブ•コンサート"),MiniType(id: 1, minitype: "演劇"),MiniType(id: 2, minitype: "その他イベント")]),SubType(id: 10, subtype: "その他")]),Type(id: 6, type: "交際費", subtypes: [SubType(id: 0, subtype: "冠婚葬祭費", minitypes: [MiniType(id: 0, minitype: "結婚関連費"),MiniType(id: 1, minitype: "葬式関連費"),MiniType(id: 2, minitype: "その他冠婚葬祭関連費")]),SubType(id: 1, subtype: "贈与", minitypes: [MiniType(id: 0, minitype: "小遣い"),MiniType(id: 1, minitype: "プレゼント"),MiniType(id: 2, minitype: "仕送り"),MiniType(id: 3, minitype: "その他贈与")]),SubType(id: 2, subtype: "寄付", minitypes: [MiniType(id: 0, minitype: "政党活動に関する寄付"),MiniType(id: 1, minitype: "募金"),MiniType(id: 2, minitype: "その他寄付")])]),Type(id: 7, type: "教育費", subtypes: [SubType(id: 0, subtype: "授業料", minitypes: [MiniType(id: 0, minitype: "幼児教育費"),MiniType(id: 1, minitype: "小学校授業料"),MiniType(id: 2, minitype: "中学校授業料"),MiniType(id: 3, minitype: "高校授業料"),MiniType(id: 4, minitype: "大学授業料"),MiniType(id: 5, minitype: "大学院授業料"),MiniType(id: 6, minitype: "専門学校授業料"),MiniType(id: 7, minitype: "その他授業料")]),SubType(id: 1, subtype: "教材費", minitypes: [MiniType(id: 0, minitype: "教科書"),MiniType(id: 1, minitype: "学習参考教材"),MiniType(id: 2, minitype: "その他教材費")]),SubType(id: 2, subtype: "補習教育", minitypes: [MiniType(id: 0, minitype: "塾・予備校費用"),MiniType(id: 1, minitype: "家庭教師費用"),MiniType(id: 2, minitype: "その他補習教育費用")])]),Type(id: 8, type: "特別費", subtypes: [SubType(id: 0, subtype: "宗教関連費用", minitypes: [MiniType(id: 0, minitype: "仏具"),MiniType(id: 1, minitype: "墓石代・維持費"),MiniType(id: 2, minitype: "その他宗教関連費")])])]
    
    @Published var selectedType: Int = 0 {
        willSet{
            selectedSubtype = 0
            id = UUID()
            print("Type changed")
        }
    }
    @Published var selectedSubtype: Int = 0
    {
        willSet{
            selectedMinitype = 0
            id = UUID()
            print("Subtype changed")
        }
    }
    @Published var id: UUID = UUID()
    @Published var selectedMinitype: Int = 0 //何か要る？
    var typeNames: [String]{
        types.map{(type) in type.type}
    }
    var subtypeNamesCount: Int{
        subtypeNames.count
    }
    var subtypeNames: [String]{
        types[selectedType].subtypes.map{(subtype) in subtype.subtype}
    }
    var minitypeNamesCount: Int{
        minitypeNames.count
    }
    var minitypeNames: [String]{
        types[selectedType].subtypes[selectedSubtype].minitypes.map {(minitype) in minitype.minitype}
    }
}




struct InputView: View{
    @State public var inputConfirm = false
    @State public var registerPrice = ""
    @State public var registerDate = Date()
    @State public var registerType = 0
    @State public var registersubType = 0
    @State public var registerminiType = 0
    @State public var memo = ""
    @ObservedObject var model = Model()
    
    var body: some View{
       NavigationView{
        ZStack(alignment: .top){
        Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
            Form{
                Section(header: Text("入力")){
                    TextField("¥", text: $registerPrice)
                    DatePicker(selection: $registerDate, label: {Text("日付を入力してください")})
                    Picker(selection: $model.selectedType, label: Text("登録種類を入力してください"))
                        {
                    //登録種別選択ロジック
                        ForEach(0..<model.typeNames.count){
                            index in
                            Text(self.model.typeNames[index])
                        }
                    }
                    .labelsHidden()
                    .clipped()
                                        
                    Picker(selection: $model.selectedSubtype, label: Text("登録種類を入力してください_2"))
                        {
                    //登録種別選択ロジック
                        ForEach(0..<model.subtypeNames.count){
                            index in
                            Text(self.model.subtypeNames[index])
                        }
                    }
                    // !! changing views id force SwiftUI to recreate it !!
                    .id(model.id)
                    .labelsHidden()
                    .clipped()
                    
                    Picker(selection: $model.selectedMinitype, label: Text("登録種類を入力してください_3"))
                        {
                    //登録種別選択ロジック
                        ForEach(0..<model.minitypeNames.count){
                            index in
                            Text(self.model.minitypeNames[index])
                        }
                        }
                    // !! changing views id force SwiftUI to recreate it !!
                    .id(model.id)
                    .labelsHidden()
                    .clipped()
                    
                    
                    
                    TextField("メモ", text: $memo)
                }
                //end Section
            }
            .background(Color.white)
                //end From
            
                    Button(action: {self.inputConfirm.toggle()}){
                        Text("保存")
                    }.sheet(isPresented: $inputConfirm){
                        InputConfirmView()
                    }
                    .foregroundColor(.white)
                    .frame(width: 120, height:30)
                    .background(Color.blue)
                    .cornerRadius(10)
                

          
            }
        .background(Color.white)
            //end VStack
        }
        //end ZStack
       }
      // .navigationBarTitle("支出/収入登録")
//end navigation
    }
}
//end inputView

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}



struct InputConfirmView: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
       NavigationView{
        ZStack(alignment: .top){
        Color(red: 172/255,green: 253/255,blue: 241/255, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)

            VStack(alignment: .center){
                Text("以下の内容で登録してもよろしいでしょうか")
                    .foregroundColor(Color.black)
                
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
            //end VStack
        }//end ZStack
       }
    }
}


struct InputConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        InputConfirmView()
    }
}
