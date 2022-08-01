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
    var ckecked: Bool
}

struct plusList: Identifiable {
    let id = UUID()
    var content: String
}

struct ContentView: View {
    @State private var todoLists = [TodoList]()
    
    private var plusListText = [
        plusList(content: "더보기 1"),
        plusList(content: "더보기 2"),
        plusList(content: "더보기 3")
    ]
    
    func appendTodoList() {
        let addList = TodoList(content: todoString, checked: false)
        
        todoLists.append(addList)
        todoStirng = ""
    }

    func toggleCheckedState(_ i: Int) {
        todoLists[i].checked.toggle()
    }
    func deleteList(_ i: Int) {
        todoLists.remove(at: i)
    }
    
    var body: some View {
        VStack{
            Text("ContentView")
            
            Text("오늘의 실천")
            
            TextField(
                "실천 할 일",
                text: $toDoString,
                onCommit: {
                    appendTodoList()
                }
            )
            List{
                ForEach(0..<todoLists.count, id: \.self) { i in
                    HStack {
                        Button(action: {
                            toggleCheckedState(i)
                        }, label: {
                            Image(systemName:
                                todoLists[i].checked == true
                                ? "checked.square"
                                : "square"
                            )
                        })
                        Text(todoLists[i].content)
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
