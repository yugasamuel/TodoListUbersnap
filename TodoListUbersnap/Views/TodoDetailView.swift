//
//  TodoDetailView.swift
//  TodoListUbersnap
//
//  Created by Yuga Samuel on 03/08/23.
//

import SwiftUI

struct TodoDetailView: View {
    @EnvironmentObject var todoViewModel: TodosViewModel
    var todo: TodoEntity
    
    @State private var title: String
    @State private var description: String
    
    var todoIndex: Int {
        todoViewModel.todos.firstIndex(where: { $0.id == todo.id }) ?? 0
    }
    
    init(todo: TodoEntity) {
        self.todo = todo
        
        _title = State(initialValue: todo.wrappedTitle)
        _description = State(initialValue: todo.wrappedDescriptions)
    }
    
    var body: some View {
        TextField("Title", text: $title)
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static let dataController = DataController()
    static let newTodo = TodoEntity(context: dataController.context)
    
    static var previews: some View {
        TodoDetailView(todo: newTodo)
            .environmentObject(TodosViewModel())
    }
}
