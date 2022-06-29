//
//  TabViewSetting.swift
//  ECOCO
//
//  Created by 김하은 on 2022/06/29.
//

import SwiftUI

struct TabViewSetting: View {
    var body: some View {
        VStack{
            TabView {
                MainView()
                    .tabItem {
                        Image(systemName: "H.square.fill")
                        Text("H")   // MainView
                    }
                MapView()
                    .tabItem {
                        Image(systemName: "M.square.fill")
                        Text("M") // MapView
                    }
                ContentView()
                    .tabItem {
                        Image(systemName: "C.square.fill")
                        Text("C")   // ContentView
                    }
                MyPageView()
                    .tabItem {
                        Image(systemName: "S.square.fill")
                        Text("S")   // Setting View
                    }
            }
        }
    }
}

struct TabViewSetting_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSetting()
    }
}
