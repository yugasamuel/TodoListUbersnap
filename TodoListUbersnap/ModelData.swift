//
//  ModelData.swift
//  TodoListUbersnap
//
//  Created by Yuga Samuel on 03/08/23.
//

import Foundation
import CoreData

final class Todos: ObservableObject {
    let dataController = DataController.instance
    @Published var todoList = [TodoEntity]()
    
    init() {
        fetchTodos()
    }
    
    func fetchTodos() {
        let request = NSFetchRequest<TodoEntity>(entityName: "TodoList")
        do {
            try todoList = dataController.context.fetch(request)
        } catch let error {
            print("Error fetching. \(error.localizedDescription)")
        }
    }
    
    func saveData() {
        dataController.save()
        fetchTodos()
    }
}
