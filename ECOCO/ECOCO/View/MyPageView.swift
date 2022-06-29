//
//  MyPageView.swift
//  ECOCO
//
//  Created by 김하은 on 2022/06/29.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        VStack{
            Text("MyPageView")
            ScrollView{
                Circle()
                    .fill(Color.gray)
                    .frame(width: 300, height: 300)
                    .padding()
                
                HStack{
                    Text("설정")
                        .frame(width: 100, height: 30)
                        .background(Color.gray)
                    Text("내 장소")
                        .frame(width: 100, height: 30)
                        .background(Color.gray)
                    Text("에코 방법")
                        .frame(width: 100, height: 30)
                        .background(Color.gray)
                }.padding()
                
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 350, height: 500)
            }
        }
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
