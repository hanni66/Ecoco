//
//  ContentView.swift
//  ECOCO
//
//  Created by 김하은 on 2022/06/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("ContentView")
            
            Text("오늘의 실천")
            List{
                Text("1")
                Text("2")
                Text("3")
            }
            
            Text("더보기")
            List{
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
