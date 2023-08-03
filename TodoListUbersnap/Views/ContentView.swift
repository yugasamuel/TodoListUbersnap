//
//  ContentView.swift
//  TodoListUbersnap
//
//  Created by Yuga Samuel on 03/08/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var todoViewModel: TodosViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(todoViewModel.todos) { todo in
                    TodoCardView(todo: todo)
                }
            }
            .navigationTitle("Todo List")
            .toolbar {
                Button(action: {
                    todoViewModel.addNewTodo()
                }, label: {
                    Image(systemName: "plus")
                })
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TodosViewModel())
    }
}
