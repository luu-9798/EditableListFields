//
//  ContentView.swift
//  EditableListFields
//
//  Created by Trung Luu on 3/10/23.
//

import SwiftUI

struct ToDoItem: Identifiable {
    let id = UUID()
    var title: String
    
    init(_ title: String) {
        self.title = title
    }
}

struct ContentView: View {
    @State var todos = [
        ToDoItem("Eat"),
        ToDoItem("Sleep"),
        ToDoItem("Code"),
        ToDoItem("Repeat")
    ]
    
    var body: some View {
        NavigationView {
            List($todos) { $todo in
                TextField("Number", text: $todo.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
