//
//  ModelData.swift
//  TodoListUbersnap
//
//  Created by Yuga Samuel on 03/08/23.
//

import Foundation
import CoreData

final class TodosViewModel: ObservableObject {
    let dataController = DataController.instance
    @Published var todos = [TodoEntity]()
    
    init() {
        fetchTodos()
    }
    
    func fetchTodos() {
        let request = NSFetchRequest<TodoEntity>(entityName: "TodoList")
        do {
            try todos = dataController.context.fetch(request)
        } catch let error {
            print("Error fetching. \(error.localizedDescription)")
        }
    }
    
    func saveData() {
        dataController.save()
        fetchTodos()
    }
}
