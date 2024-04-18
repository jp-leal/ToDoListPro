//
//  ContentView.swift
//  ToDoListPro
//
//  Created by Joao Leal on 4/17/24.
//

import SwiftUI

struct ToDoListView: View {
    
    var toDos = ["Learn Swift", "Build Apps", "Change The World", "Make a Film"]
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(toDos, id: \.self) { todo in
                    NavigationLink{
                        DetailView(passedValue: todo)
                    } label:{
                        Text(todo)
                    }
               
                }
            }.navigationTitle("To Do List")
                .navigationBarTitleDisplayMode(.inline)
                .listStyle(.grouped)
        }
    }
}

#Preview {
    ToDoListView()
}

