//
//  ContentView.swift
//  ECOCO
//
//  Created by 김하은 on 2022/06/29.
//

import SwiftUI

struct TodoList: Identifiable {
    let id = UUID()
    var content: String
}

struct plusList: Identifiable {
    let id = UUID()
    var content: String
}

struct ContentView: View {
    
    private var todoListText = [
        TodoList(content: "1"),
        TodoList(content: "2"),
        TodoList(content: "3")
    ]
    
    private var plusListText = [
        plusList(content: "더보기 1"),
        plusList(content: "더보기 2"),
        plusList(content: "더보기 3")
    ]
    
    var body: some View {
        VStack{
            Text("ContentView")
            
            Text("오늘의 실천")
            List{
                ForEach(0..<todoListText.count, id: \.self) { i in
                    HStack {
                        Button(action: {}, label: {
                            Image(systemName: "square")
                        })
                        Text(todoListText[i].content)
                    }
                }
            }
            
            Text("더보기")
            List{
                ForEach(0..<plusListText.count, id: \.self) { i in
                    HStack {
                        Button(action: {}, label: {
                            Image(systemName: "square")
                        })
                        Text(plusListText[i].content)
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "trash")
                        })
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
