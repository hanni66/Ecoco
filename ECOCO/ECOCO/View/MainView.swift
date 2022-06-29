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
                ForEach(0..<3) { index in
                    Text("hi")
                    Circle()
                        .fill(Color.green)
                        .frame(width: 150, height: 30)
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
