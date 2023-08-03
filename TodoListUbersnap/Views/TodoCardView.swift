//
//  TodoView.swift
//  TodoListUbersnap
//
//  Created by Yuga Samuel on 03/08/23.
//

import SwiftUI

struct TodoCardView: View {
    var todo: TodoEntity
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(todo.wrappedTitle)
                .font(.headline)
            Text("Due date: \(todo.wrappedDueDate)")
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static let dataController = DataController()
    static let newTodo = TodoEntity(context: dataController.context)
    
    static var previews: some View {
        TodoCardView(todo: newTodo)
            .padding()
    }
}
