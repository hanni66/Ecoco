//
//  MainView.swift
//  ECOCO
//
//  Created by 김하은 on 2022/06/29.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            Text("MainView")
            ScrollView{
                Text("오늘의 추천")
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 350, height: 250)
                Text("내 주변 가게")
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 350, height: 250)
                Text("참여 현황")
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 350, height: 250)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
